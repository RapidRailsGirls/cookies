$(function() {
  $('#make').click(function(event) {
    event.preventDefault();
    $.ajax('/cookies.json', {
        type: "POST",
        data: {
          "num_cookies": $('#num_cookies').val()
        },
        success: function(data) {
          $('#info').html(data['message']);
        },
        error: function(jqXHR) {
          var data = jqXHR.responseJSON;
          $('#error').html(data['message']);
        }
      }
    );
  });
});
