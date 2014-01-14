$(document).ready(function(){
	$(".flip-num").find("button.up").on("click", function(event){
		var thisInput = $(this).parent().find("input");
		thisInput[0].stepUp(1);
	});
	$(".flip-num").find("button.down").on("click", function(event){
		var thisInput = $(this).parent().find("input");
		thisInput[0].stepDown(1);
	});
});