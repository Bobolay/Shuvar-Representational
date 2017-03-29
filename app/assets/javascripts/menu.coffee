$document.on 'click', '.menu-button', ->

  $(this).toggleClass("opened")
  $('body').toggleClass('menu-opened')
  $('.menu-wrapper').toggleClass('opened')
  $('.mask').toggleClass('visible')

$.clickOut(".menu-wrapper",
  ()->
    $('.menu-button').removeClass('opened')
    $('.mask').removeClass('visible')
    $('.menu-wrapper').removeClass('opened')
    $('body').removeClass('menu-opened')
  {except: ".menu-wrapper, .menu-button"}
)