(() => {
  const DEFAULT_FR_LAT = 46.603354;
  const DEFAULT_FR_LNG = 1.888334;

  const latInput = document.getElementById('lat');
  const lngInput = document.getElementById('lng');
  const villeSelect = document.getElementById('ville');
  const mapModeCheckbox = document.getElementById('utiliser_carte');
  const mapEl = document.getElementById('map');

  const changeMapElVisibiliy = (isVisible) => {
    if (isVisible) {
      mapEl.style.removeProperty('display');
      map.invalidateSize();
    } else {
      mapEl.style.display = 'none';
    }
  };
  
  // Le script doit pouvoir être chargé sur plusieurs pages : on ne fait rien si les éléments ne sont pas là.
  if (!latInput || !lngInput || !villeSelect || !mapModeCheckbox || !mapEl) return;

  const parseCoord = (v) => {
    const n = parseFloat(v);
    return Number.isFinite(n) ? n : NaN;
  };

  const initialLat = parseCoord(latInput.value);
  const initialLng = parseCoord(lngInput.value);
  const hasCoords = Number.isFinite(initialLat) && Number.isFinite(initialLng) && !(initialLat === 0 && initialLng === 0);

  const startLat = hasCoords ? initialLat : DEFAULT_FR_LAT;
  const startLng = hasCoords ? initialLng : DEFAULT_FR_LNG;

  const initialMatchCity = (() => {
    if (!hasCoords) return null;
    const tol = 1e-5;
    const match = Array.from(villeSelect.options).find((opt) => {
      const optLat = parseCoord(opt.dataset.lat);
      const optLng = parseCoord(opt.dataset.lng);
      if (!Number.isFinite(optLat) || !Number.isFinite(optLng)) return false;
      return Math.abs(optLat - initialLat) < tol && Math.abs(optLng - initialLng) < tol;
    });
    return match && match.value ? match.value : null;
  })();

  // Map + marqueur
  const initialZoom = hasCoords && initialMatchCity !== null ? 12 : hasCoords ? 10 : 5;
  const map = L.map('map').setView([startLat, startLng], initialZoom);
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>',
  }).addTo(map);

  let marker = null;

  const setMarker = (newLat, newLng) => {
    const lat = Number(newLat);
    const lng = Number(newLng);
    if (!Number.isFinite(lat) || !Number.isFinite(lng)) return;

    latInput.value = lat.toFixed(6);
    lngInput.value = (((lng + 180) % 360 + 360) % 360 - 180).toString();

    if (marker) {
      marker.setLatLng([lat, lng]);
    } else {
      marker = L.marker([lat, lng], { draggable: true }).addTo(map);
    }
  };

  const syncCityFromCoordsIfPossible = () => {
    const lat = parseCoord(latInput.value);
    const lng = parseCoord(lngInput.value);
    if (!Number.isFinite(lat) || !Number.isFinite(lng)) return;
    if (lat === 0 && lng === 0) return;

    const tol = 1e-5;
    const match = Array.from(villeSelect.options).find((opt) => {
      const optLat = parseCoord(opt.dataset.lat);
      const optLng = parseCoord(opt.dataset.lng);
      if (!Number.isFinite(optLat) || !Number.isFinite(optLng)) return false;
      return Math.abs(optLat - lat) < tol && Math.abs(optLng - lng) < tol;
    });

    if (match && match.value) villeSelect.value = match.value;
  };

  const setMapMode = (isMapMode) => {
    mapModeCheckbox.checked = isMapMode;
    villeSelect.disabled = isMapMode;
  };

  // Mode initial : si on a des coords qui matchent une ville => liste, sinon => carte
  if (initialMatchCity !== null) {
    villeSelect.value = initialMatchCity;
    setMapMode(false);
    if (hasCoords) setMarker(initialLat, initialLng);
  } else {
    setMapMode(false);
    if (hasCoords) setMarker(initialLat, initialLng);
    // Si l'utilisateur a déjà une coordonnée sans ville matchée (édition), on passe en mode carte pour cohérence.
    if (hasCoords && initialLat !== 0 && initialLng !== 0) setMapMode(true);
  }


  // Changement de ville => met à jour lat/lng (uniquement en mode liste)
  villeSelect.addEventListener('change', () => {
    if (mapModeCheckbox.checked) return;
    const opt = villeSelect.selectedOptions[0];
    if (!opt || !opt.dataset.lat || !opt.dataset.lng) return;
    const lat = parseCoord(opt.dataset.lat);
    const lng = parseCoord(opt.dataset.lng);
    if (!Number.isFinite(lat) || !Number.isFinite(lng)) return;

    setMarker(lat, lng);
    map.setView([lat, lng], 10);
  });

  // Checkbox => mode carte / mode liste
  mapModeCheckbox.addEventListener('change', () => {
    const isMapMode = mapModeCheckbox.checked;
    villeSelect.disabled = isMapMode;
    changeMapElVisibiliy(isMapMode);

    // Si on repasse en liste, on tente de recoller la coordonnée à une ville existante.
    if (!isMapMode) syncCityFromCoordsIfPossible();
  });

  document.addEventListener('DOMContentLoaded', () => {
    changeMapElVisibiliy(mapModeCheckbox.checked);
  });

  map.on('click', (e) => {setMarker(e.latlng.lat, e.latlng.lng);});
})();