
const customSubmitBtn = document.querySelector('#custom-submit-btn');
  const submitBtn = document.querySelector('#submit-btn');

  customSubmitBtn.addEventListener('click', (e) => {
    e.preventDefault();
    submitBtn.click();
  });
  
  //Función para el loading ------
window.onload = function () {
  $('#onload').fadeOut();
  $('body').removeClass('hidden-loading');
}

//--------

// Ocultar el contenedor "login-box" al principio
$('.login-box').hide();

$(window).on('load', function() {
  // Ocultar el "loading"
  $('#onload').fadeOut();
  $('body').removeClass('hidden-loading');
  // Mostrar el contenedor "login-box"
  $('.login-box').show();
});



