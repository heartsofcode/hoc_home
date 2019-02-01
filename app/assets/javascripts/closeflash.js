$(document).ready(function() {
  $('.close-flash').click(function() {
    removeAlert();
  })

  function removeAlert() {
    $('.alert').fadeOut(500, function() {
      $(this).remove();
    });
  }
//  window.setTimeout(removeAlert, 8000);
});
