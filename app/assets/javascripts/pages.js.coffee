# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.

ready = ->
  # Initialize foundation
  $ -> $(document).foundation()

  # Smooth link jumping
  $('a[href^=#]:not([href=#])').on 'click', (e) ->
    e.preventDefault();
    $target = $(@hash)

    $('html, body').animate
      scrollTop: $target.offset().top
      600

$(document).ready(ready)
$(document).on('page:load', ready)