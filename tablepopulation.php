<?php

// Datababse connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "semi_conductor_management_system"

// create a connection 
$conn = new mysqli($servername,$username,$password,$dbname);

// check connection
if ($conn->connect_error) {
		//stop executing the code and echo error
	  die("Connection failed: " . $conn->connect_error);
	} 

//*******Queries*******\\
function tablequery(chosentable) {
	//query the table
	$querytarget = chosentable
	$sql = "SELECT * FROM";
	$sql = $sql.$querytarget;

	$result = $conn->query($sql);

	// Create an array to store the queried data
	$data = array();

	// Loop through th results and add each row to the array
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$data[] = $row;
		}
	}
}



