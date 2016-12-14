scaleBGVids = () ->
  $(".bg-vid").each(() ->
    $w = $(window)
    $v = $(this).find("video")
    $v.width($w.width())
    #Use div size to figure out 'left' negative value as 10%
    #Detect rollover and play video, expand, and animate underline
)

$(document).ready(() ->
  scaleBGVids()
)

$(window).resize(() ->
  scaleBGVids()
)
