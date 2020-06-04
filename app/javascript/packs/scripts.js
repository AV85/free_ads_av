$(document).on('ready turbolinks:load', function() {
  const hiddenBoxPhone = $( "#phone-block" );
  $( "#phone-block-link" ).on( "click", function( event ) {
    hiddenBoxPhone.toggle('slow');
  });
  // const hiddenBoxSubcategory1 = $( "#subcategories-list-1" );
  // const hiddenBoxSubcategory2 = $( "#subcategories-list-2" );
  // const hiddenBoxSubcategory3 = $( "#subcategories-list-3" );
  // const hiddenBoxSubcategory4 = $( "#subcategories-list-4" );
  //
  // $("#subcategories-link-1" ).on( "click", function( event ) {
  //   hiddenBoxSubcategory1.toggle('slow');
  // });
  // $("#subcategories-link-2" ).on( "click", function( event ) {
  //   hiddenBoxSubcategory2.toggle('slow');
  // });
  // $("#subcategories-link-3" ).on( "click", function( event ) {
  //   hiddenBoxSubcategory3.toggle('slow');
  // });
  // $("#subcategories-link-4" ).on( "click", function( event ) {
  //   hiddenBoxSubcategory4.toggle('slow');
  // });
});