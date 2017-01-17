$(".menu-button").on "click", ()->
  $(this).toggleClass("opened")
  $('.menu-wrapper').toggleClass("opened")
  $('.mask').toggleClass("visible")