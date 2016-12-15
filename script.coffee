init = () ->
  $(".tron").css("height", 0.1*$(window).height()+"px")

scaleBGVids = () ->
  $(".tron").each(() ->
    $w = $(window)
    $c = $(this)
    $d = $c.find(".bg-vid")
    $v = $d.find("video")
    $t = $c.find(".title")

    $v.width($w.width())

    $d.css("left", Math.round(-0.2 * $d.width())+"px")
    $d.css("top", Math.round(-0.5 * $d.height())+"px")

    $t.css("left", Math.round(($d.width() - $t.width()) / 2)+"px")
    $t.css("top", Math.round(($d.height() - $t.height()) / 2)+"px")
    #Detect rollover and play video, expand, and animate underline
)

$(document).ready(() ->
  init()
  scaleBGVids()
  $(".tron").mouseenter(() ->
    $(this).find("video").get(0).play()
    $(this).animate({ height: (0.3*$(window).height()+"px")}, {step: scaleBGVids}, "fast")
  )
  $(".tron").mouseleave(() ->
    $(this).find("video").get(0).pause()
    $(this).animate({ height: (0.1*$(window).height()+"px")}, {step: scaleBGVids}, "fast")
  )
)

$(window).resize(() ->
  scaleBGVids()
)
