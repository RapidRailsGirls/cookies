$(function() {
  $('#make').click(function(event) {
    event.preventDefault();
    $.post('/cookies.json', {"num_cookies": $('#num_cookies').val()}).
      success(function(data) {
        $('#error').hide();
        $('#info').html(data['message']).show();
      }).
      error(function(jqXHR) {
        var data = jqXHR.responseJSON;
        $('#info').hide();
        $('#error').html(data['message']).show();
      }
    );
  });
});
