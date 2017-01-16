$(document).ready ->

    #     M A I N     B A N N E R     S L I D E R

    home_slider = $('.main-banner-slider').bxSlider
        controls: false
        pager: false
        infiniteLoop: true
        hideControlOnEnd: true
        speed: 750
        pause: 10000
        auto: true
        infiniteLoop: true
        onSlideBefore: ($slideElement, oldIndex, newIndex)->
            current = home_slider.getCurrentSlide()
            if current == 0
              $(".line.active-line-position").css("left", "0")
            if current == 1
              $(".line.active-line-position").css("left", "25%")
            if current == 2
              $(".line.active-line-position").css("left", "50%")
            if current == 3
              $(".line.active-line-position").css("left", "75%")
            $('.slide-description-container .description-text').removeClass('visible')
            $('.slide-description-container .description-text').eq(current).addClass('visible')
    $('.slide-description-container .arrow-left').click ->
        current = home_slider.getCurrentSlide()
        home_slider.goToPrevSlide(current) - 1
    $('.slide-description-container .arrow-right').click ->
        current = home_slider.getCurrentSlide()
        home_slider.goToNextSlide(current) + 1

    #     P R O J E C T S     S L I D E R 

    projects_slider = $('.projects-slider').bxSlider
        controls: false
        pagerCustom: '#bx-pager-projects'
        infiniteLoop: true
        hideControlOnEnd: true
        speed: 750
        pause: 10000
        auto: true
        infiniteLoop: true
        onSlideBefore: ($slideElement, oldIndex, newIndex)->
            current = projects_slider.getCurrentSlide()
            $('.project-info .description-text').removeClass('visible')
            $('.project-info .description-text').eq(current).addClass('visible')
    $('.projects-container .arrow-left').click ->
        current = projects_slider.getCurrentSlide()
        projects_slider.goToPrevSlide(current) - 1
    $('.projects-container .arrow-right').click ->
        current = projects_slider.getCurrentSlide()
        projects_slider.goToNextSlide(current) + 1