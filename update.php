<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "semi_conductor_management_system";

$conn = new mysqli($servername, $username, $password, $dbname);

// check if the update branch button was clicked
if (isset($_POST['updatebranch'])) {
    if(isset($_POST['pushupdate'])){
        $newId = $_POST['newbranchid'];
        $newname = $_POST['newbranchname'];
        $newlocation = $_POST['newlocation'];
            
            
        $sql = "UPDATE branch SET Branch_ID='$newId', Branch_Name='$newname', Location_ID='$newlocation' WHERE Branch_ID='$newId'";
       if (mysqli_query($conn, $sql)) {
           echo "Record updated successfully";
       } else {
           echo "Error updating record: " . mysqli_error($conn);
       }
    }
    
    
    // get the branch ID from the POST data
    $updatethis = $_POST['updateid'];

    // sql to get branch data
    $sql = "SELECT Branch_ID, Branch_Name, Location_ID FROM Branch WHERE Branch_ID = '$updatethis'";
    $result = $conn->query($sql); //perform query
    $row = $result->fetch_assoc(); //get results

    $branch = $row['Branch_ID'];
    $name = $row['Branch_Name'];
    $location = $row['Location_ID'];

    $data = array(
        "branchid_sent" => $branch,
        "branchname_sent" => $name,
        "locationid_sent" => $location
    );

    header("Content-Type: application/json");

    // Return the data as JSON
    echo json_encode($data);

    // close connection
    $conn->close();
}
?>
