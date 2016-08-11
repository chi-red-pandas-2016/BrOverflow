$(document).ready(function() {

  $('.vote-buttons-container').on("click", ".vote-button", function(e){
    e.preventDefault();
    var $form = $(this).parent();
    value = $(this).attr('value');
    route_url = ($form.attr('action'))

    if (route_url.length > 5) {
      route_type = "PUT";
    } else {
      route_type = "POST"
    }

    $.ajax({
      url: route_url,
      type: route_type,
      data: {vote: value}
    })
    .done(function(new_count) {
      
    }
  })

})
