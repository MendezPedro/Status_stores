
$(document).ready(function() {
  // Verificar si el botón ya ha sido presionado y ocultado
  if (localStorage.getItem('botonPresionado')) {
    $('#startButton').hide(); 
  } else {
    $('#startButton').show();
  }

  $('#startButton').closest('form').on('submit', function(event) {
    event.preventDefault(); // Evitar que el formulario se envíe normalmente
    $('#startButton').prop('disabled', true);
    $('#startButton').hide();

    // Almacenar en el almacenamiento local que el botón fue presionado
    localStorage.setItem('botonPresionado', 'true');
  });
});

  $(document).ready(function() {
    function updateView() {
      $("#storeStatusContainer").load("/stores/status_partial");
    }

    setInterval(updateView, 1000); // 1 segundo
  });