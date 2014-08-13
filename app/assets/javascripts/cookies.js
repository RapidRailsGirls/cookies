$(function() {
  $('#make').click(function(event) {
    event.preventDefault();
    $.ajax('/cookies.json', {
        type: "POST",
        data: {
          "num_cookies": $('#num_cookies').val()
        }
      }
    );
  });
});