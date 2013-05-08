$(document).ready(function(){
	var registerForm = $("#registerForm");
	$(".registerFormAnchor").click(function () {
		registerForm.toggleClass("hideRegisterForm");
	});

	function alertBox(){
		$(".flashErrors").fadeOut(4000);
	}

	alertBox();

})


