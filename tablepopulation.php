<?php

// Datababse connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "semi_conductor_management_system";

// create a connection 
$conn = new mysqli($servername,$username,$password,$dbname);

// check connection
if ($conn->connect_error) {
    //stop executing the code and echo error
    die("Connection failed: " . $conn->connect_error);
} 

//*******Queries*******\\
function tablequery($chosentable) {
    global $conn; // make the connection object available inside the function
    //query the table
    $querytarget = $chosentable;
    $sql = "SELECT * FROM " . $querytarget;



	// Retrieve data from the database
	$result = mysqli_query($conn, $sql);
	$rows = mysqli_fetch_all($result, MYSQLI_ASSOC);

	// Generate HTML for each row of the table
	$html = '';
	foreach ($rows as $row) {
	    $html .= '<tr>';
	    $html .= '<td>' . $row['id'] . '</td>';
	    $html .= '<td>' . $row['name'] . '</td>';
	    $html .= '<td>' . $row['age'] . '</td>';
	    $html .= '</tr>';
	}

// Update the table's contents with the HTML
echo '<script>$("#employeetable tbody").html("' . $html . '");</script>';

// Close the database connection
table
mysqli_close($conn);
?>

