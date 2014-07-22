ready = ->


  $(window).on 'scroll', ->
    y_scroll_pos = window.pageYOffset;
    scroll_pos_test = 450; #fade in here
    if y_scroll_pos < scroll_pos_test
      $("#btt").fadeOut()
    else
      $("#btt").fadeIn()

  $("#btt").click ->
    $("html, body").animate({scrollTop: 0}, 500);

$(document).ready(ready)
$(document).on('page:load', ready)
