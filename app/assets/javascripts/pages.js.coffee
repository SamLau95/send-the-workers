# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.

$(".main").onepage_scroll
  sectionContainer: "section"
  easing: "ease"
  animationTime: 500
  pagination: false
  updateURL: false
  beforeMove: (index) ->

  afterMove: (index) ->

  loop: false
  responsiveFallback: 640

$('#begin').on 'click', (e) ->
  e.preventDefault();
  if $('body.disabled-onepage-scroll').length
    $target = $(@hash)
    $('html, body').animate
      scrollTop: $target.offset().top
    , 900
    true
  else
    $('.main').moveDown()
    false
