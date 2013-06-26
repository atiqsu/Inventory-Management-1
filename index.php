<?php
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
	$("select option:selected").each(function () {
		if($(this).text() == "Desktop") {
			$.getJSON("select.php?desklap=" + $(this).val(), function(data){
				var opt = [];
				$.each(data, function(key, val){
					opt.push('<option id="'+ key + '">' + val.category + '</option>');
				});
					$("#list").show().html(opt);
					$("#message").empty();
			});
			} else if($(this).text() == "Laptop") {
				$("#list").show().html("<option>nope</option>");
				$("#message").html("<p>I'm working on it</p>");
			}
  		});
	});
$("select#list").change(function(){
	$("select#list option:selected").each(function () {
		var sub = $(this).text();
		$.getJSON("select.php?desklap=1&list=" + sub, function(data){
			var opt = [];
			var int11 = [];
			$.each(data, function(key, val){
					int11.push('<dd id="searchDropDownList">' +
						       '<label for="descrip'+ key + '">' + this.Field + ': </label>' + 
							   '<select name="descrip'+ key +'" id="descrip' + key + '"></select>' +
							   '</dd>');
			});
				$("#message").empty();
				$("#searchDropDownListBig").empty().append(int11);
		});
	});
})

}); //ready
</script>

</script>
<form id="searchDropDownList" action="index.php" method="GET">
	<label for="catag">Category: </label> 
	<select name="desklap" id="desklap">
		<option value="0">Other</option>
		<option value="1">Desktop</option>
	    <option value="2">Laptop</option>
    </select>

    <select name="list" id="list"></select>
    <dl id="searchDropDownListBig"><dl>
	<input type="submit" value="Select">
</form>
<div id="message"></div>

</body>
</html>