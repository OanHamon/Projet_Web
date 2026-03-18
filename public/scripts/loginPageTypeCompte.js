document.addEventListener('DOMContentLoaded', function() {
    const typeSelect = document.getElementById('signup-type');
    const prenomGroup = document.getElementById('prenom-group');
    function updateFields() {
      if (typeSelect.value === 'entreprise') {
        prenomGroup.style.display = 'none';
        prenomGroup.querySelector('input').required = false;
      } else {
        prenomGroup.style.display = '';
        prenomGroup.querySelector('input').required = true;
      }
    }
    typeSelect.addEventListener('change', updateFields);
    updateFields();
});