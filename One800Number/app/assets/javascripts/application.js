// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


$(document).ready(function(){

	$("input[type='range']").change(function(){
		var slider = $(this);
		var width = slider.width();
		var value = slider.val();
		var dif = 7-value;
		var first_result = $("#results .first_result");
		var first_result_title = first_result.find("h3");
		var second_result = $("#results .second_result");
		var second_result_title = second_result.find("h3");
		var speed = 300;
		var easing = 'easeOutBack';

		if (value == 7){
			first_result_title.text("Seven letters:");
			second_result_title.text("");
			first_result.animate({width: "94%"}, speed);
			second_result.animate({width: "0%"}, speed);
		} else if(value == 6) {
			first_result_title.text("Six letters:");
			first_result.animate({width: "78%"}, speed);
			second_result.animate({width: "16%"}, speed);
			second_result_title.text("One letter:");
		} else if(value == 5) {
			first_result_title.text("Five letters:");
			second_result_title.text("Two letters:");
			first_result.animate({width: "65%"}, speed);
			second_result.animate({width: "29%"}, speed);
		} else if(value == 4) {
			first_result_title.text("Four letters:");
			second_result_title.text("Three letters:");
			first_result.animate({width: "53%"}, speed);
			second_result.animate({width: "41%"}, speed);
		} else if(value == 3) {
			first_result_title.text("Three letters:");
			second_result_title.text("Four letters:");
			first_result.animate({width: "41%"}, speed, easing);
			second_result.animate({width: "53%"}, speed, easing);
		} else if(value == 2) {
			second_result_title.text("Five letters:");
			first_result.animate({width: "28%"}, speed, easing, function(){
				first_result_title.text("Two letters:");
			});
			second_result.animate({width: "66%"}, speed, easing);
		} else if(value == 1) {
			second_result_title.text("Six letters:");
			second_result.animate({width: "78%"}, speed, easing);
			first_result.animate({width: "16%"}, speed, easing, function(){
				first_result_title.text("One letter:");
			});
			first_result.css("display", "inline-block");
			first_result.css("margin-left", "3%");
			second_result.css("margin-left", '0%');
			
		} else if(value == 0){
			first_result_title.html("<h3>&nbsp;</h3>");
			second_result_title.text("All results:");
			first_result.animate({width: "0%"}, speed, easing, function(){
				first_result.css("display", "none");
				second_result.css("margin-left", '3%');
			});
			second_result.animate({width: "94%"}, speed, easing);
		}
	});



	$(".flip-num").find("button.up").on("click", function(event){
		var thisInput = $(this).parent().find("input");
		var value = thisInput[0].value;
		if(thisInput == undefined){
			thisInput.value = "2";
		}
		thisInput[0].stepUp(1);
	});
	$(".flip-num").find("button.down").on("click", function(event){
		var thisInput = $(this).parent().find("input");
		thisInput[0].stepDown(1);
	});

});

