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

  animation = ->
    $('.owl-stage').css 'transform', 'translate3d(-6121px, 0px, 0px)'
    $('.owl-stage').css 'transition', '12000ms ease 0s'
  $('.open-btn').click (e) ->
    e.preventDefault()
    animation()
  $('.line').show()