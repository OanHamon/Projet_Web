window.addEventListener('scroll', function() {
    let btn = document.getElementById('GoToTop');
    if (window.scrollY > window.innerHeight * 0.5) {
      btn.style.display = 'block';
    } else {
      btn.style.display = 'none';
    }
});