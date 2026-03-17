// Récupération des éléments du DOM
const latInput = document.getElementById('lat');
const lngInput = document.getElementById('lng');
const distInput = document.getElementById('slider-distance');
const distDisplay = document.getElementById('distance-value');

// Valeurs initiales (depuis Twig ou défaut)
let lat = parseFloat(latInput.value) || 44;
let lng = parseFloat(lngInput.value) || 2;
let dist = parseInt(distInput.value) || 50;

// Initialisation de la carte
var map = L.map('map').setView([lat, lng], (lat === 44 && lng === 2) ? 5 : 10);

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

let marker;
let circle;
let circlestyle = {
    color: '#3388ff',
    fillColor: '#3388ff',
    fillOpacity: 0.2,
    radius: dist * 1000 // conversion km en mètres
};

// Fonction pour mettre à jour le marqueur et le cercle
function updateMapElements(newLat, newLng, newDist) {
    if (marker) map.removeLayer(marker);
    if (circle) map.removeLayer(circle);

    marker = L.marker([newLat, newLng]).addTo(map);
    circle = L.circle([newLat, newLng], {
        ...circlestyle,
        radius: newDist * 1000
    }).addTo(map);

    // Mise à jour des champs cachés du formulaire
    latInput.value = newLat;
    lngInput.value = newLng;
}

// Si on a déjà des coordonnées (retour de recherche), on affiche le marqueur
if (lat !== 44 || lng !== 2) {
    updateMapElements(lat, lng, dist);
    let zoom = 13 - Math.log2(dist <= 0 ? 1 : dist);
    map.setView([lat, lng], Math.max(4, Math.min(14, Math.round(zoom))));
}

// Clic sur la carte
map.on('click', function (e) {
    lat = e.latlng.lat.toFixed(6);
    lng = e.latlng.lng.toFixed(6);
    updateMapElements(lat, lng, dist);
});

// Changement du slider de distance
distInput.addEventListener('input', function(e) {
    dist = Number(e.target.value);
    distDisplay.innerText = dist + " km";
    if (circle) {
        circle.setRadius(dist * 1000);
    }
});