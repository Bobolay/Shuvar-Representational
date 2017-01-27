$document.ready ->

  login_button = $('.login-button')
  login_popup = $('.login-popup-wrapper')
  close_button = $('.login-popup-wrapper .close')

  login_button.on 'click', ->

    $('.mask-full ').addClass('visible ')
    login_popup.addClass('visible')

  $.clickOut('.login-popup-wrapper',
    ()->
      $('.login-popup-wrapper').removeClass('visible')
      $('.mask-full ').removeClass('visible')
    {except: '.login-popup-wrapper, .login-button'}
  )

  close_button.on 'click', ->
    login_popup.removeClass('visible')
    $('.mask-full ').removeClass('visible')
