# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
(function(jQ) {
	$.fn.registerCourse = function() {
		this.each(function() {
			var checkboxItem = $(this);
			var registerHandler = function(event) {
				console.info(event.currentTarget)
				if ($(event.currentTarget).is(":checked")){
					alert('ban dang da ky thanh cong');
				}
				checkboxItem.on('click',registerHandler);
			}
		})
	}
})(jQuery);
jQuery(function(){
	$(".register-checkbox").registerCourse();
})