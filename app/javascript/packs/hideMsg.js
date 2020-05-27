$(document).on('ready turbolinks:load', function() {
  setTimeout(function() {
    $('#message-notice').fadeOut('slow');
    $('#message-alert').fadeOut('slow');
  }, 5000);
});