$(document).on('ready turbolinks:load', function() {
  const hiddenBoxPhone = $( "#phone-block" );
  $( "#phone-block-link" ).on( "click", function( event ) {
    hiddenBoxPhone.toggle('slow');
  });
});