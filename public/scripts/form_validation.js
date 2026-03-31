document.getElementById("nom-candidature").addEventListener("blur", function() {
    this.value = this.value.toUpperCase();
});

document.getElementById('lm').addEventListener("change", function() {
    checkFile('lm');

});
document.getElementById('cv').addEventListener("change", function() {
    checkFile('cv');

});

document.getElementById("email").addEventListener("blur", function() {
    const val = this.value;
    if (val !== "" && (!val.includes("@") || !val.includes("."))) {
        showAlert("Email invalide");
        this.value = "";
    }
});


function checkFile(inputId){
    let input = document.getElementById(inputId);
    let file = input.files[0];
    if(!checkSize(file)){
        showAlert('Fichier trop volumineux');
        input.value = '';
    }
    if(!checkType(file)){
        showAlert('Fichier non conforme');
        input.value = '';
    }
}

function checkType(file){
    let accepted = ['.pdf', '.doc', '.docx', '.odt', '.rtf', '.jpg', '.png'];
    let extension = '.' + file.name.split('.').pop();
    if(!accepted.includes(extension) ){
        return false;
    }
    return true; 
}


function checkSize(file){
    if(file.size > 2 * 1024 * 1024){
        return false; 
    }
    return true; 
}


function showAlert(msg){
    alert("ERREUR : " + msg);
}