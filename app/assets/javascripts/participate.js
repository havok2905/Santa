$( document ).ready( function() {

  $( '.success-message' ).hide();
  $( '.failure-message' ).hide();

  $( '.participate' ).on( 'click.participate', function( event ) {

    event.preventDefault();

    $.post( '/home/participate.json', {
      name: $( '.participantName' ).val(),
      email: $( '.participantEmail' ).val(),
    } ,function( data ) {
      if( data.success == true ) {
        $( '.success-message' ).show();
        $( '.failure-message' ).hide();
        $( '.participate-form').hide();

        $( '.participants-table tr:first-child').after('<tr><td>' + $( '.participantName' ).val() + '</td><td>' + $( '.participantEmail' ).val() + '</td></tr>');
      }
      else {
        $( '.success-message' ).hide();
        $( '.failure-message' ).show();
      }
    });

  });
});
