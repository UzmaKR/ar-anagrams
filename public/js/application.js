$(document).ready(function() {




  $("form").submit(function(e) {
    e.preventDefault();
    $("form").keyup(_.debounce(function() { 
    $.ajax({
      type: 'get',
      url: '/ghost',
      data: $("form").serialize()
      }).done(function(data) {
        $('.word').children('p').remove();
        var array = $.parseJSON(data);
        $.each(array, function(index, value){
          $('.word').append("<p>"+value+"</p>");
        });
      });
    }));
  });
});