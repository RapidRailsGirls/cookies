$(function() {
  $('#make').click(function(event) {
    event.preventDefault();
    $.ajax('/cookies.json', {
        type: "POST",
        data: {
          "num_cookies": $('#num_cookies').val()
        },
        success: function(data) {
          $('#alert').css('color', 'green');
          $('#alert').html(data['message']);
        },
        error: function(jqXHR) {
          $('#alert').css('color', 'red');
          $('#alert').html(jqXHR.responseJSON['message']);
        }
      }
    );
  });
});