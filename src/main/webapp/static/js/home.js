$(document).ready(function(){

	$("#recents, #home, #files,#bin,#shared,#photos").click(function(){
		$(".nav-stacked .active").removeClass("active");
		$(this).addClass("active");
		$("#contentdiv").empty();
		GetContent(this);
	});
});


function GetContent ( current) {
   
    if (current.id === "home") {
    	$("#contentdiv").html("<h1>Hello <b>home</b>!</h1>");
    }
    if (current.id === "files") {
    	$("#contentdiv").html("<h1>Hello <b>files</b>!</h1>");
    }

     if (current.id === "recents") {
    	 $("#contentdiv").html("<h1>Hello <b>recents</b>!</h1>");
    }
     if (current.id === "photos") {
    	 $("#contentdiv").html("<h1>Hello <b>photos</b>!</h1>");
    }
     if (current.id === "shared") {
    	 $("#contentdiv").html("<h1>Hello <b>shared</b>!</h1>");
    }
     if (current.id === "bin") {
    	 $("#contentdiv").html("<h1>Hello <b>Recycle bin</b>!</h1>");
    }
   
}