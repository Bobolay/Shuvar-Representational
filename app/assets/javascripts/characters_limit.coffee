$(->
  $(".slider-count-symbols").each(()->
    length=$(this).text().length
    if length>350
      $(this).text($(this).text().substr(0,350)+'...')
  )
)

$(->
  $(".new-block .smaller").each(()->
    length=$(this).text().length
    if length>120
      $(this).text($(this).text().substr(0,120)+'...')
  )
)

$(->
  $(".search-wrapper .larger").each(()->
    length=$(this).text().length
    if length>100
      $(this).text($(this).text().substr(0,100)+'...')
  )
)