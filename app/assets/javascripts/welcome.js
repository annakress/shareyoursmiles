// counting chars in textarea
function countChar(val) {
        var max_len = val.name.length;
        var len = val.value.length;
        if (len >= max_len) {
          val.value = val.value.substring(0, max_len);
        } else {
          $('#charNum').text(max_len - len);
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
