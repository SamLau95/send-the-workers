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
  responsiveFallback: false

$('#begin').on 'click', ->
  $('.main').moveDown()
  false
