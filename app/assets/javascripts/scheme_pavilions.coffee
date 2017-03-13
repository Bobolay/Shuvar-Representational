$(document).on "ready", ->

  scheme = $('.scheme-container svg')
  pavilion = scheme.find('.pavilion')

  pavilion.on 'click', ->
    pavilion_id = $(this).attr("data-pavilion-id")
    console.log("pavilion:", pavilion_id)