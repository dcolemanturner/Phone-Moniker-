$(document).ready(function(){
  var flipnum = $(".flip-num");
  //flipnum.val(0);
  //$(".flip-num").
  flipnum.find(".up").on("click", function(){
  	flipnum.find("input").valueAsNumber();
  });
});