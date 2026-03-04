document.addEventListener("DOMContentLoaded", () => {
    const maxLines = 3;

    document.querySelectorAll(".texte-description-card-stage").forEach((p, index) => {
        const btn = document.querySelector(".btn-" + index);

        // Calcule la hauteur d'une ligne
        const lineHeight = parseFloat(getComputedStyle(p).lineHeight);
        const maxHeight = lineHeight * maxLines;

        // Si le texte dépasse 3 lignes → bouton visible
        if (p.scrollHeight > maxHeight + 2) { 
            btn.style.display = "inline-block";
        } else {
            btn.style.display = "none";
        }
    });
});