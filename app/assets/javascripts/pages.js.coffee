# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.

$(".main").onepage_scroll
  sectionContainer: "section"
  easing: "ease"
  animationTime: 700
  pagination: true
  updateURL: false
  beforeMove: (index) ->

  afterMove: (index) ->

  loop: false
  responsiveFallback: false

$('#continue').on 'click', ->
  $('.main').moveDown()
  false
