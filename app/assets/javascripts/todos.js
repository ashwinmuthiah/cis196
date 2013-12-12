$(function(){
   $("#title").click(function(){
     $("#title").css("background-color", "blue");
   });
 });

$('form#new_todo').on("submit", function(){

	var valuesToSubmit = $(this).serialize();
	$.ajax({
		type: "POST",
		url: "/todos",
		data: valuesToSubmit,
		dataType: "HTML"
		)}.success(function(data){
			alert("succsss");
			$("table").append(data);
			return false;

		});
		return false;

	});

});