$(function() {
	$("body").on("click", "#logout", function(e){
		e.preventDefault();
		console.log("hello");
		console.log("Logout button was clicked");
		$.ajax({
			url: $(this).attr("href"),
			type: "DELETE"
		}).done(function(msg){
			console.log(msg);
		});
	});
});