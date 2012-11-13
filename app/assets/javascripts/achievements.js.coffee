# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
	$('.achievement').hover (event) ->
		console.log("Hover triggered")
		$(this).toggleClass("hover")

	$('#switchBox').click (event)->
		$('#work_file').toggleClass('hide')
		$('#work_url').toggleClass('show')


