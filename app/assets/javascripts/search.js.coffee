# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(window).scroll ->
  scroll = $(window).scrollTop()
  if scroll > 0
    $(".navbar, .dropdown-menu").addClass "active"
  else
    $(".navbar, .dropdown-menu").removeClass "active"
  return
