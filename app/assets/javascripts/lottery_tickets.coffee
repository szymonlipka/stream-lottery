# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  owl = $("#owl")
  owl.owlCarousel(
    loop: true,
    pagination: false,
    autoplay: false,
    mouseDrag: false,
  )
  move = setInterval(animation, 50)
  #50 is only an example value

  animation = ->
    $('.owl-stage').css 'transform', 'translate3d(-6121px, 0px, 0px)'
    $('.owl-stage').css 'transition', '12000ms ease 0s'
    #maybe -1 depends on direction...
    if Math.random() * 100 == 2
    #adjust the 100 to your needs
      clearInterval move
  $('.open-btn').click (e) ->
    e.preventDefault()
    animation()