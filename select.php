<?php
include 'connect.php';
error_reporting(E_ERROR | E_WARNING | E_PARSE);

if($_GET['desklap'] == 1 && isset($_GET['list']) == NULL) {
	$sql = "SELECT * FROM `desktop`";
	if ($result = $mysqli->query($sql)) {
		    while ($row = $result->fetch_assoc()) {
		        $cat[] = $row;
		    }
		    echo json_encode($cat);
		    $result->free();
		}
	}

	
if($_GET['desklap'] == 1 && isset($_GET['list']) != NULL) {
	$mylist = strtolower($_GET['list']);

	$sql = "desc `$mylist`";
	if ($result = $mysqli->query($sql)) {
		    while ($row = $result->fetch_assoc()) {
		        $cat[] = $row;
		    }
		    echo json_encode($cat);
		    $result->free();
		}
	} 
?>