# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.

$('#begin').on 'click', (e) ->
  e.preventDefault();
  $target = $(@hash)
  $('html, body').animate
    scrollTop: $target.offset().top
    600
  false
