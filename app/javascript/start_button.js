
$(document).ready(function() {
  // Verificar si el botón ya ha sido presionado y ocultado
  if (localStorage.getItem('botonPresionado')) {
    $('#startButton').hide(); // Ocultar el botón si ya se presionó y está almacenado en el almacenamiento local
  } else {
    $('#startButton').show();
  }

  $('#startButton').closest('form').on('submit', function(event) {
    event.preventDefault(); // Evitar que el formulario se envíe normalmente

    // Realizar acciones cuando se presiona el botón

    // Deshabilitar el botón para que no se pueda presionar nuevamente
    $('#startButton').prop('disabled', true);

    // Ocultar el botón
    $('#startButton').hide();

    // Almacenar en el almacenamiento local que el botón fue presionado
    localStorage.setItem('botonPresionado', 'true');

    // Aquí podrías realizar una llamada AJAX si estás usando `remote: true` en el botón
    // Para interactuar con el servidor sin recargar la página
  });
});
