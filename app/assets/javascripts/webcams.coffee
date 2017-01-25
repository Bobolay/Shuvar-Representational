$document.ready ->

  button = $('.camera-button')
  video = $('.video-container .live-video')

  button.on 'click', ->

    button_index = $(this).index()
    $(this).siblings().removeClass('active')
    $(this).addClass('active')

    if video.eq(button_index).hasClass('visible')
      return
    else
      video.removeClass('visible')
      video.eq(button_index).addClass('visible')