<?php
include 'connect.php';

if($_GET['desklap'] == 1) {
	$sql = "SELECT * FROM `desktop`";
	if ($result = $mysqli->query($sql)) {
	    while ($row = $result->fetch_assoc()) {
	        $cat[] = $row;
	    }
	    echo json_encode($cat);
	    $result->free();
	}
}

$sql = "SELECT * FROM `desktop`";

if ($result = $mysqli->query($sql)) {
    while ($row = $result->fetch_assoc()) {
        $cat[] = $row;
    }
    echo json_encode($cat);
    $result->free();
}
?>