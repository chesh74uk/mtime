# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "turbolinks:load", ->
  $pickerInput = $('.date_time_picker input.date_time_picker')
  initialValue = $pickerInput.val()
  $('.date_time_picker > .input-group.date').datetimepicker({ format: 'YYYY-MM-DD HH:mm:ss' })
  $pickerInput.val(initialValue)
