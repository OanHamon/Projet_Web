let locValue = document.getElementById('location').value;

console.log(locValue);

const default_dist = 10;

var map = L.map('map').setView([44, 2], 4);

// Parse location to get dist, lat, lng
let dist, lat, lng;
try {
    // Example format: [52,[0.005493,0.000022]]'
    if (locValue && /^\[\s*-?\d+\s*,\s*\[\s*[\d\.\-]+,\s*[\d\.\-]+\s*\]\s*\]$/.test(locValue)) {
        let arr = JSON.parse(locValue);
        dist = Number(arr[0]);
        lat = Number(arr[1][0]);
        lng = Number(arr[1][1]);
    }
} catch (e) {
    // fallback defaults: dist=0 (no filter), Toulouse center
    dist = default_dist; lat = 44; lng = 2;
}

console.log(dist, lat, lng);


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

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

map.on('click', function (e) {
    if (!dist || dist <= 0) {
        dist = default_dist;
        circlestyle.radius = dist * 1000; // Update the radius in meters
        if (circle) {
            circle.setRadius(circlestyle.radius);
        }
    }
    lat = e.latlng.lat.toFixed(6);
    lng = e.latlng.lng.toFixed(6);

    // Supprime l’ancien pin
    if (marker) { map.removeLayer(marker); }
    if (circle) { map.removeLayer(circle); }

    // Ajoute le pin
    marker = L.marker([lat, lng]).addTo(map);
    circle = L.circle([lat, lng], circlestyle).addTo(map);

    // Met à jour l'input
    document.getElementById('location').value = "[" + dist + ",[" + lat + ',' + lng + "]]";
});

document.getElementById('slider-distance').addEventListener('input', function(e) {
    dist = Number(e.target.value);
    circlestyle.radius = dist * 1000; // Update the radius in meters
    if (circle) {
        circle.setRadius(circlestyle.radius);
    }
    document.getElementById('location').value = "[" + dist + ",[" + lat + ',' + lng + "]]";
});