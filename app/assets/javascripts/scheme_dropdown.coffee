$document.ready ->

  $('.scheme-button').on 'click', ->
    $('.scheme-button .arrow-dropdown').toggleClass('opened')
    $('.scheme-container-desktop').toggleClass('visible')