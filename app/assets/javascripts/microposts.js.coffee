updateCountdown = ->
  remaining = 140 - $("#micropost_content").val().length
  $('.post-counter').text(remaining)

ready = ->
  updateCountdown()
  $("#micropost_content").on("change keyup keydown keypress paste drop",
                             updateCountdown)

$(document).ready(ready)
$(document).on('page:load', ready)
