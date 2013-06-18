<?php
/*
if (isset($_GET['day']) && isset($_GET['date']) && isset($_GET['year'])) {
	$day = htmlentities($_GET['day']);
	$date = htmlentities($_GET['date']);
	$year = htmlentities($_GET['year']);
	if (!empty($day)&& !empty($date)&& !empty($year)) {
		echo 'It\'s '. $day . ' ' .$date .' ' .$year;
	} else {
		echo "please fill in all feilds.";
	}
} 
*/
?>
<html>
<head>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<title>Welcome to Second Life inventory!</title>
</head>
<body>
<script>
$(document).ready(function(){

var sel = $("select#desklap");
$(sel).change(function(){
	var str = "";
	$("#list").hide().empty();
	$("select option:selected").each(function () {
		if($(this).text() == "Desktop") {
			$.getJSON("select.php", function(data){
				var opt = [];
				$.each(data, function(key, val){
					opt.push('<option id="'+ key + '">' + val.category + '</option>');
				});
					$("#list").show().html(opt);
					$("#message").empty();
			});
			} else if($(this).text() == "Laptop") {
				$("#list").show().html("<option>I'm working on it</option>");
				$("#message").html("<p>I'm working on it</p>");
			}
  		});
	});
}); //ready
</script>

</script>
<form action="index.php" method="GET">
	<label for="catag">Catagory: </label> 
	<select name="desklap" id="desklap" name="catagory">
		<option value="1">Desktop</option>
	    <option value="2">Laptop</option>
    </select>

    <select name="list" id="list"name="catagory"></select>
	<input type="submit" value="Select">
</form>
<div id="message"></div>

</body>
</html>