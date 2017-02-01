$document.on 'click', '.floor-button', ->

  button = $(this)
  floor = $('.floor-container')

  button_index = button.index()
  $(this).siblings().removeClass('active')
  $(this).addClass('active')

  if floor.eq(button_index).hasClass('visible')
    return
  else
    floor.removeClass('visible')
    floor.eq(button_index).addClass('visible')