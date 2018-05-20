$( document ).ready(function() {
  $( "#api_tweets_form" ).submit(function( event ) {
    event.preventDefault();
    var post_url = $(this).attr("action");
    var form_data = $(this).serialize();
    var request_method = $(this).attr("method"); 
    $( "#results" ).html("");
    $.ajax({
        url : post_url,
        type: request_method,
        data : form_data
    }).done(function(response){
        $("#search").prop("disabled", false );
        $.each(response, function (index, value) {
          $( "#results" ).append( '<div>' + value.text + '</div>' );
        });
    });
  });
  console.log( "ready!" );
});
