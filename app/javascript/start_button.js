document.addEventListener("DOMContentLoaded", function() {
  console.log("Mensaje que se mostrará en la consola");

  // Obtén una referencia al botón por su ID
  var startButton = document.getElementById("startButton");

  // Agrega un oyente de evento de clic al botón
  startButton.addEventListener("click", function() {
    startButton.disabled = true;
    startButton.style.display = "none";
  });
});

var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
  return new bootstrap.Popover(popoverTriggerEl)
})