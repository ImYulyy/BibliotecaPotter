//Función para el loading ------
window.onload = function () {
  $('#onload').fadeOut();
  $('body').removeClass('hidden-loading');
}

//--------

window.addEventListener("scroll", function() {
    const navBar = document.querySelector(".nav-bar");
    if (window.scrollY > 0) {
      navBar.classList.add("fixed");
    } else {
      navBar.classList.remove("fixed");
    }
  });
  