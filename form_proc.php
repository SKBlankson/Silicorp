<?php
if (isset($_POST['formid'])) {

  //database connection parameters
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "semi_conductor_management_system";

  // Create connection
  $conn = new mysqli($servername, $username, $password, $dbname);
  // Check connection
  if ($conn->connect_error) {
    //stop executing the code and echo error
    die("Connection failed: " . $conn->connect_error);
  }

  //logic for branch form
  if ($_POST['formid'] == 'branchform') {
    //branch form data
    $branch_id = $_POST['branchid'];
    $branch_name = $_POST['branchname'];
    $locationid = $_POST['locationid'];

    //check for existing branch id
    $sql_search = "SELECT * FROM Branch WHERE Branch_ID = '$branch_id'";
    $result = mysqli_query($conn, $sql_search);  
    $count = mysqli_num_rows($result);

    //if count is zero, insert into the database
    if ($count === 0) {
      $query = "INSERT INTO Branch (Branch_ID, Branch_Name, Location_ID)
                VALUES ('$branch_id', '$branch_name', '$locationid')";
      $conn->query($query);
      echo "<script>alert('Record was added successfully!')</script>";
   } else {
			echo '<script>alert("This data already exists in the system. Check the ID")</script>';
			exit();
		}
	}
	$conn->close();
}
?>



