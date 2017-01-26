$document.ready ->

  button = $('.floor-button')
  floor = $('.floor-container')

  button.on 'click', ->

    button_index = $(this).index()
    $(this).siblings().removeClass('active')
    $(this).addClass('active')

    if floor.eq(button_index).hasClass('visible')
      return
    else
      floor.removeClass('visible')
      floor.eq(button_index).addClass('visible')