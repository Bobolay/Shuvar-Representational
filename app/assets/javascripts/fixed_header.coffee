scroll = (e)->
  # if e && e.ctrlKey
  #   alert("ctrl")
  header = $(".main-nav-container")
  top_nav = $(".top-nav-container")
  top_nav_height = top_nav.outerHeight()
  scroll_top = $("body").scrollTop() || $(window).scrollTop()
  if scroll_top > top_nav_height
    header.addClass('fixed')
  else
    header.removeClass('fixed')

$(window).on "scrolldelta", scroll

