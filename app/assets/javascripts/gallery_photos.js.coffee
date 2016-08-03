# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#gallery_photos').imagesLoaded ->
    $('#gallery_photos').masonry
      itemSelector: '.box'
      isFitWidth: true
      

