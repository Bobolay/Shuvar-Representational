$document.ready ->


  #     Л О Г І Н     П О П А Н

  login_button = $('.login-button')
  login_popup = $('.login-popup-wrapper')
  close_button = $('.login-popup-wrapper .close')

  login_button.on 'click', ->

    $('.mask-full ').addClass('visible ')
    login_popup.addClass('visible')


  #     П Л А Н     С Х Е М И

  scheme = $('.scheme-container svg')
  pavilion = scheme.find('.pavilion')

  pavilion.on 'click', ->
    pavilion_id = $(this).attr("data-pavilion-id")
    console.log("pavilion:", pavilion_id)
    $('.mask-full').addClass('visible')
    $('.terminal-popup').addClass('visible')


  #     З А К Р И Т Т Я   К Л І К О М   З А   М Е Ж А М И
  
  $.clickOut('.login-popup-wrapper, .terminal-popup',
    ()->
      $('.login-popup-wrapper, .terminal-popup').removeClass('visible')
      if $('.mask-full').hasClass('visible')
        $('.mask-full ').removeClass('visible')
    {except: '.login-popup-wrapper, .login-button, .scheme-container svg .pavilion'}
  )

  close_button.on 'click', ->
    login_popup.removeClass('visible')
    $('.mask-full ').removeClass('visible')



  #     C A L L     U S     P O P U P

  $('.top-nav-contact-button').on "click", ->
    $('.call-us-popup').toggleClass("visible")

  $('.call-us-popup .button').on "click", ->
    $(this).css("color","#00A029")
    $('.success').addClass("visible")
    setTimeout (->
      $('.success').removeClass("visible")
    ), 3000
    setTimeout (->
      $('.call-us-popup .button').css("color","white")
    ), 3800

  $.clickOut(".call-us-popup",
    ()->
      $(".call-us-popup").removeClass('visible')
    {except: ".top-nav-contact-button, .call-us-popup"}
  )
