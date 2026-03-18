const latInput = document.getElementById('lat');
const lngInput = document.getElementById('lng');
const distInput = document.getElementById('slider-distance');
const distDisplay = document.getElementById('distance-value');

let lat = parseFloat(latInput.value) || 44;
let lng = parseFloat(lngInput.value) || 2;
let dist = parseInt(distInput.value) || 50;

var map = L.map('map').setView([lat, lng], (lat === 44 && lng === 2) ? 5 : 10);

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

    // Met à jour le tag de localisation
    updateLocationTag(newLat, newLng, newDist);
}

function updateLocationTag(newLat, newLng, newDist) {
    // Supprimer l'ancien tag de localisation s'il existe
    const existing = document.getElementById('location-tag');
    if (existing) existing.remove();

    const tagBox = document.querySelector('.tag-box');
    if (!tagBox) return;

    const tag = document.createElement('div');
    tag.className = 'tag';
    tag.id = 'location-tag';
    tag.innerHTML = `
        <p>À ${newDist}km de ${parseFloat(newLat).toFixed(5)} || ${parseFloat(newLng).toFixed(5)}</p>
        <button type="button" onclick="removeLocationTag()">X</button>
    `;
    tagBox.appendChild(tag);
}

function removeLocationTag() {
    const tag = document.getElementById('location-tag');
    if (tag) tag.remove();

    // Réinitialiser les coordonnées
    latInput.value = 0;
    lngInput.value = 0;
    if (marker) map.removeLayer(marker);
    if (circle) map.removeLayer(circle);
    marker = null;
    circle = null;
}

// Si on a déjà des coordonnées (retour de recherche), afficher le marqueur et le tag
if (lat !== 44 || lng !== 2) {
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