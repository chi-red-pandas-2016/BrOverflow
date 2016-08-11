$(document).ready(function() {

  $('.vote-buttons-container').on("click", ".vote-button", function(e){
    e.preventDefault();
    var $form = $(this).parent();
    var path = $form.serialize();
    console.log($(this).attr('value'));

  //   $.ajax({
  //     url: $form.attr('action'),
  //     type: $form.attr('method'),
  //     data: {vote: postId},
  //     dataType: 'json'
  //   })
  })

})
