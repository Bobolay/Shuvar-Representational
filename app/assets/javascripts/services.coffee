$document.ready ->

  #     FOR MOBILE SET ACTIVE PAGE ON HEAD OF SERVICE LIST

  if width < 640
    $('.service-link.active').prependTo('.service-list')

  #     THEN OPEN DROPDOWN LIST OF ALL SERVICES

  $('.service-link.active').on "click", (e)->
    event.preventDefault()
    $(this).toggleClass('opened')
    $(this).closest('.service-list').find('.service-link').toggleClass('visible')



  #     BECOME A MEMBER STEPS

  $prev_button = $('.step .prev')
  $next_button = $('.step .next')

  $next_button.on "click", ->
    current_step = $(this).parent().parent().find('.step.active')
    next_step = current_step.next()
    current_step.removeClass('active')
    next_step.slideToggle(350).addClass('active')

  $prev_button.on "click", ->
    current_step = $(this).parent().parent().find('.step.active')
    next_step = current_step.prev()
    current_step.slideUp(350).removeClass('active')
    next_step.addClass('active')