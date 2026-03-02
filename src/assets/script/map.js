var map = L.map('map').setView([44, 2], 4);

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);


let marker;
map.on('click', function (e) {
    const lat = e.latlng.lat.toFixed(6);
    const lng = e.latlng.lng.toFixed(6);

    // Supprime l’ancien pin
    if (marker) {
    map.removeLayer(marker);
    }

    // Ajoute le pin
    marker = L.marker([lat, lng]).addTo(map);

    // Met à jour l'input
    document.getElementById('location').value = lat +' , '+ lng;
    }
);