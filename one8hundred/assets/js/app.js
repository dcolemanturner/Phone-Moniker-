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
		var speed = 130;

		if (value == 7){
			first_result_title.text("Seven letters:");
			second_result_title.text("");
			first_result.animate({width: "94%"}, speed);
			second_result.animate({width: "0%"}, speed);
		} else if(value == 6) {
			first_result_title.text("Six letters:");
			first_result.animate({width: "77%"}, speed);
			second_result.animate({width: "17%"}, speed, "swing", function(){
				second_result_title.text("One letter:");
			});
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
			first_result.animate({width: "41%"}, speed);
			second_result.animate({width: "53%"}, speed);
		} else if(value == 2) {
			first_result_title.text("Two letters:");
			second_result_title.text("Five letters:");
			first_result.animate({width: "29%"}, speed);
			second_result.animate({width: "65%"}, speed);
		} else if(value == 1) {
			second_result_title.text("Six letters:");
			second_result.animate({width: "77%"}, speed);
			first_result.animate({width: "17%"}, speed, "swing", function(){
				first_result_title.text("One letter:");
			});
		} else if(value == 0){
			first_result_title.text("All results:");
			second_result_title.text("");
			first_result.animate({width: "0%"}, speed);
			second_result.animate({width: "94%"}, speed);
		}
	});



	$(".flip-num").find("button.up").on("click", function(event){
		var thisInput = $(this).parent().find("input");
		var value = thisInput[0].value;
		if(thisInput == undefined){
			thisInput.value = "2";
		}
		thisInput[0].stepUp(1);
		alert(value);
	});
	$(".flip-num").find("button.down").on("click", function(event){
		var thisInput = $(this).parent().find("input");
		thisInput[0].stepDown(1);
	});

});