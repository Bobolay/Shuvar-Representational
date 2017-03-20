$document.on 'click', '.menu-button', ->

  $(this).toggleClass("opened")
  $('.menu-wrapper').toggleClass('opened')
  $('.mask').toggleClass('visible')
  $('body').toggleClass('menu-opened')

$.clickOut(".menu-wrapper",
  ()->
    $('.menu-button').removeClass('opened')
    $('.mask').removeClass('visible')
    $('.menu-wrapper').removeClass('opened')
    $('body').removeClass('menu-opened')
  {except: ".menu-wrapper, .menu-button"}
)