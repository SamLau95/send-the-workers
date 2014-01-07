# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.

foundationSettings =
  orbit:
    resume_on_mouseout: true
    timer: false

ready = ->
  # Initialize foundation
  $ -> $(document).foundation(foundationSettings)

  # Snap.js
  snap = new Snap element: document.getElementById('wrapper')
  $('#open-left').on 'click', (e) ->
    e.preventDefault()
    snap.open 'left'

  # Smooth link jumping
  $('a[href^=#]:not([href=#])').on 'click', (e) ->
    e.preventDefault()
    $target = $(@hash)

    snap.close()

    $('body, html').animate
      scrollTop: $target.offset().top
      600

$(document).ready(ready)
$(document).on('page:load', ready)