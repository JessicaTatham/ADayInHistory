$(document).ready(function() {

  $('form.get_birthday').on('submit', doSomething)


  function doSomething(e) {
    e.preventDefault();
    
    var request = $.ajax({
      url: '/animal',
      type: 'post',
      data: $('form').serialize()
    })

    request.done(function(response){
    $('.animal_info').html(response)
    // $('body').css('background-image', 'url('response.image')')

    })



};

});
