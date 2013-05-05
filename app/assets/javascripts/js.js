//= require jquery
//= require jquery_ujs





$(document).ready(function(){
	var registerForm = $("#registerForm");
	$(".registerFormAnchor").click(function () {
		registerForm.toggleClass("hideRegisterForm");
		registerForm.toggleClass("showRegisterForm");
	});

	function alertBox(){
		$(".flashErrors").fadeOut(4000);
	}

	alertBox();

})


