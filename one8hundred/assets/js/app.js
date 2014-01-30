$(document).ready(function(){

	$("input[type='range']").change(function(){
		slider = $(this);
		width = slider.width();
		value = slider.val();
		output = slider.parent().find("output");
		dif = 7-value;
		output.css("letter-spacing", "3px");
		output.css("font-size", "26px");
		output.css("left", "50%");
		if (value == 7){
			output.text("random");
			output.css("letter-spacing", "1px");
			output.css("left", "48%");
			output.css("font-size", "26px");
		} else if(value < 7 && value > 0) {
			output.text(value + "/" + dif);
		} else if(value == 0){
			output.text("7");
		}
		
	});
	$(".flip-num").find("button.up").on("click", function(event){
		var thisInput = $(this).parent().find("input");
		var value = thisInput[0].value;
		thisInput[0].stepUp(1);
		
	});
	$(".flip-num").find("button.down").on("click", function(event){
		var thisInput = $(this).parent().find("input");
		thisInput[0].stepDown(1);
	});

});