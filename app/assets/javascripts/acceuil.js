$(document).ready(function() {
	var i=0;
	$("input[name=Grippe]").click(function(e){
		i=i+1;
		if ( i%2 == 0 ) {
			console.log("pas coche");
		}
		else {
			console.log("coche");
		}
	})
})