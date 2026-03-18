
function getExistingKeywords() {
    return Array.from(document.querySelectorAll('.tag-box .tag p'))
        .map(p => p.textContent.trim().toLowerCase())
        // Exclure le tag de localisation (contient "km de")
        .filter(t => !t.includes('km de'));
}

function addKeywordTag(value) {
    const trimmed = value.trim();

    // Vérification vide
    if (!trimmed) return;

    // Vérification doublon (insensible à la casse)
    const existing = getExistingKeywords();
    if (existing.includes(trimmed.toLowerCase())) return;

    const tagBox = document.querySelector('.tag-box');
    const tag = document.createElement('div');
    tag.className = 'tag';
    tag.innerHTML = `
        <p>${trimmed}</p>
        <input type="hidden" name="job[]" value="${trimmed}">
        <button type="button" onclick="
            this.closest('.tag').querySelector('input').disabled = true;
            this.closest('.tag').remove();
        ">X</button>
    `;
    tagBox.appendChild(tag);
}

// Clic sur le bouton +
document.getElementById('btn-add-keyword').addEventListener('click', function () {
    const input = document.getElementById('job-input');
    addKeywordTag(input.value);
    input.value = '';
    input.focus();
});

// Touche Entrée dans le champ
document.getElementById('job-input').addEventListener('keydown', function (e) {
    if (e.key === 'Enter') {
        e.preventDefault(); // évite de soumettre le formulaire
        addKeywordTag(this.value);
        this.value = '';
    }
});

function getExistingKeywords() {
    return Array.from(document.querySelectorAll('.tag-box .tag p'))
        .map(p => p.textContent.trim().toLowerCase())
        .filter(t => !t.includes('km de'));
}

function submitForm() {
    document.querySelector('.stage-search-box').submit();
}

function addKeywordTag(value) {
    const trimmed = value.trim();
    if (!trimmed) return;

    const existing = getExistingKeywords();
    if (existing.includes(trimmed.toLowerCase())) return;

    const tagBox = document.querySelector('.tag-box');
    const tag = document.createElement('div');
    tag.className = 'tag';
    tag.innerHTML = `
        <p>${trimmed}</p>
        <input type="hidden" name="job[]" value="${trimmed}">
        <button type="button" onclick="removeKeywordTag(this)">X</button>
    `;
    tagBox.appendChild(tag);
}

function removeKeywordTag(btn) {
    const tag = btn.closest('.tag');
    tag.querySelector('input').disabled = true;
    tag.remove();
    // Soumettre après suppression
    submitForm();
}

// Clic sur le bouton +
document.getElementById('btn-add-keyword').addEventListener('click', function () {
    const input = document.getElementById('job-input');
    addKeywordTag(input.value);
    input.value = '';
    input.focus();
    // Soumettre après ajout
    submitForm();
});

// Touche Entrée dans le champ
document.getElementById('job-input').addEventListener('keydown', function (e) {
    if (e.key === 'Enter') {
        e.preventDefault();
        addKeywordTag(this.value);
        this.value = '';
        // Soumettre après ajout
        submitForm();
    }
});