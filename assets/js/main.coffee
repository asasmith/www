ready = ->
  $(".nav-toggle").on "click", ->
    $el = $(this)
    $nav = $("#navbar")
    klass = "expanded"
    max_height = $nav.children().height()
    if $el.hasClass klass
      $el.removeClass klass
    else
      $el.addClass klass
    if $nav.height() > 0
      $nav.removeAttr "style"
    else
      $nav.css("max-height", max_height)

  $w = $(window)
  $p = $(".parallax")
  if $p.length and $w.width() >= 768
    $w.on "scroll", ->
      pos = (0 - $w.scrollTop() * 0.2) + "px"
      $p.css("background-position-y", pos)


  $("[data-href]").on "click", ->
    location.href = $(this).attr("data-href")


  $(".scrolltomain").on "click", ->
    $("html, body").animate({ scrollTop: $w.height() })


  $(".video-sibling").each ->
    $el = $(this)
    $el.find("> div").css
      minHeight: $el.closest(".row").find("iframe").first().height()

  # responsive imgage hack for post master images

  $("#post [data-img-mobile]").each ->
    $el = $(this)
    img = $el.attr("data-img-mobile")
    if $w.width() < 768 and img.length
      $el.css
        backgroundImage: "url('" + img + "')"

  # responsive imgage hack for case study master images

  $("#case-study [data-img-mobile]").each ->
    $el = $(this)
    img = $el.attr("data-img-mobile")
    if $w.width() < 768 and img.length
      $el.css
        backgroundImage: "url('" + img + "')"
  # responsive image hack for case study bands

  $(".page-work-index [data-img-sm]").each ->
    $el = $(this)
    img = $el.attr("data-img-sm")
    if $w.width() <= 320 and img.length
      $el.css
        backgroundImage: "url('/img/work/" + img + "')"

    $(".page-work-index [data-img-md]").each ->
      $el = $(this)
      img = $el.attr("data-img-md")
      if $w.width() >= 768 and $w.width() < 992 and img.length
        $el.css
          backgroundImage: "url('/img/work/" + img + "')"
$(document).ready(ready);
