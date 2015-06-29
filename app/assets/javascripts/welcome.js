// counting chars in textarea
function countChar(val) {
        var len = val.value.length;
        if (len >= 500) {
          val.value = val.value.substring(0, 500);
        } else {
          $('#charNum').text(500 - len);
        }
      };

// infinite scrolling
      $(document).ready(function() {
              if ($('.pagination').length) {
                $(window).scroll(function() {
                  var url = $('.pagination .next_page').attr('href');
                  if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {
                    $('.pagination').text("Please Wait...");
                    return $.getScript(url);
                  }
                });
                return $(window).scroll();
              }
});
