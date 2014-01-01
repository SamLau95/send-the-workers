# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.

# Smooth link jumping
$('a[href^="#"]').on 'click', (e) ->
  e.preventDefault();
  $target = $(@hash)
  $('html, body').animate
    scrollTop: $target.offset().top
    600
  false

# Sticky side nav for medium+ screens
mq = window.matchMedia( "(max-width: 40em)" )
$('.side-navigation').stickyfloat() if !mq.matches