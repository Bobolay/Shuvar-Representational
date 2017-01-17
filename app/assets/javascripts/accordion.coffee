$('.accordion-button').click((e)->

    e.preventDefault()
    
    $this = $(this)
    $this.find('.arrow-dropdown svg').toggleClass('opened')
  
    if $this.next().hasClass('show')
            $this.next().removeClass('show')
            $this.next().slideUp(350)
    else
        $this.parent().parent().find('.accordion-inner').removeClass('show')
        $this.parent().parent().find('.accordion-inner').slideUp(350)
        $this.next().toggleClass('show')
        $this.next().slideToggle(350)
)