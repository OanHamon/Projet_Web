const latInput = document.getElementById('lat');
const lngInput = document.getElementById('lng');
const distInput = document.getElementById('slider-distance');
const distDisplay = document.getElementById('distance-value');

const DEFAULT_FR_LAT = 46.603354;
const DEFAULT_FR_LNG = 1.888334;
const DEFAULT_FR_ZOOM = 5;

let lat = parseFloat(latInput.value);
let lng = parseFloat(lngInput.value);
let dist = parseInt(distInput.value) || 0;

let initialLat = isNaN(lat) || lat == 0 ? DEFAULT_FR_LAT : lat;
let initialLng = isNaN(lng) || lng == 0 ? DEFAULT_FR_LNG : lng;

// Si on n'a pas de coordonnées utilisateur, vue sur la France avec zoom 6
var map = L.map('map').setView(
    [initialLat, initialLng],
    (initialLat === DEFAULT_FR_LAT && initialLng === DEFAULT_FR_LNG) ? DEFAULT_FR_ZOOM : 10
);

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

let marker;
let circle;

function updateMapElements(newLat, newLng, newDist) {
    if (marker) map.removeLayer(marker);
    if (circle) map.removeLayer(circle);

    marker = L.marker([newLat, newLng]).addTo(map);
    circle = L.circle([newLat, newLng], {
        color: '#3388ff',
        fillColor: '#3388ff',
        fillOpacity: 0.2,
        radius: newDist * 1000
    }).addTo(map);

    latInput.value = newLat;
    lngInput.value = newLng;

    updateLocationTag(newLat, newLng ,newDist);
}

function updateLocationTag(newLat, newLng, newDist) {
    const existing = document.getElementById('location-tag');
    if (existing) existing.remove();

    const tagBox = document.querySelector('.tag-box');
    if (!tagBox) return;

    const tag = document.createElement('div');
    tag.className = 'tag';
    tag.id = 'location-tag';
    tag.innerHTML = `
        <p>À ${newDist}km de ${parseFloat(newLat).toFixed(2)} / ${parseFloat(newLng).toFixed(2)}</p>
        <input type="hidden" name="dist" value="${newDist}">
        <button type="button" onclick="
        removeLocationTag();
        this.closest('.tag').querySelector('input').disabled = true;
        this.closest('form').submit();
        this.closest('.tag').remove();
        ">X</button>
    `;
    tagBox.appendChild(tag);
}

function removeLocationTag() {
    // Réinitialisation des coordonnées pour le prochain POST
    latInput.value = 0;
    lngInput.value = 0;
    
    // On peut aussi remettre le slider à une valeur par défaut visuellement
    distInput.value = 50; 
    distDisplay.innerText = '50 km';

    if (marker) map.removeLayer(marker);
    if (circle) map.removeLayer(circle);
    marker = null;
    circle = null;
}

// Si on a déjà des coordonnées (retour de recherche), afficher le marqueur et le tag
if (lat && lat !== 0 && lng && lng !== 0 && !(lat === DEFAULT_FR_LAT && lng === DEFAULT_FR_LNG)) {
    updateMapElements(lat, lng, dist);
    let zoom = 13 - Math.log2(dist <= 0 ? 1 : dist);
    map.setView([lat, lng], Math.max(4, Math.min(14, Math.round(zoom))));
}

// Clic sur la carte
map.on('click', function (e) {
    lat = parseFloat(e.latlng.lat.toFixed(5));
    lng = parseFloat(e.latlng.lng.toFixed(5));
    updateMapElements(lat, lng, dist);
});

// Changement du slider de distance
distInput.addEventListener('input', function(e) {
    dist = Number(e.target.value);
    distDisplay.innerText = dist + ' km';
    if (circle) {
        circle.setRadius(dist * 1000);
    }
    // Mettre à jour le tag si une position est déjà sélectionnée
    if (latInput.value != 0 && lngInput.value != 0) {
        updateLocationTag(latInput.value, lngInput.value, dist);
    }
});