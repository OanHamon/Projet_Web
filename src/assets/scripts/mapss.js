let locValue = document.getElementById('location').value;

var map = L.map('map').setView([44, 2], 4);

let [dist, lat, lng] = locValue.split(',');
dist = (dist === undefined || dist === '') ? -1 : Number(dist);
lat = Number(lat);
lng = Number(lng);

let marker; // Declare marker before any usage
let circle;
let circlestyle = {
    color: 'none',
    fillColor: 'blue',
    fillOpacity: 0.2,
    radius: dist * 1000 // convertir km en mètres
};

if (dist >= 0) {
    let zoom = 13 - Math.log2(dist <= 0 ? 1 : dist);
    zoom = Math.max(4, Math.min(14, Math.round(zoom)));
    map.setView([lat, lng], zoom);
    marker = L.marker([lat, lng]).addTo(map);
    // Trace un cercle de rayon dist (en km)
    if (dist > 0 && !isNaN(lat) && !isNaN(lng)) {
        circle = L.circle([lat, lng], circlestyle).addTo(map);
    }
}

console.log(dist, lat, lng);

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

map.on('click', function (e) {
    const newlat = e.latlng.lat.toFixed(6);
    const newlng = e.latlng.lng.toFixed(6);

    // Supprime l’ancien pin
    if (marker) { map.removeLayer(marker); }
    if (circle) { map.removeLayer(circle); }

    // Ajoute le pin
    marker = L.marker([newlat, newlng]).addTo(map);
    circle = L.circle([newlat, newlng], circlestyle).addTo(map);

    // Met à jour l'input
    document.getElementById('location').value = newlat + ',' + newlng;
});

document.getElementById('slider-distance').addEventListener('input', function(e) {
    dist = Number(e.target.value);
    circlestyle.radius = dist * 1000; // Update the radius in meters
    console.log("edit");
    if (circle) {
        circle.setRadius(circlestyle.radius);
    }
    
});