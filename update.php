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







//////////////////////////////////////////////////////////////////

// check if the update employee button was clicked
if (isset($_POST['updateemp'])) {
    if(isset($_POST['pushupdate'])){
        
        echo 'hi';

        $newempid = $_POST['$newempid'];
        $newempfname = $_POST['$newempfname'];
        $newemplname = $_POST['$newemplname'];
        $newempgender = $_POST['$newempgender'];
        $newempdob = $_POST['$newempdob'];
        $newempmail = $_POST['$newempmail'];
        $newempdeptcode = $_POST['$newempdeptcode'];
        $newempdoe = $_POST['$newempdoe'];


        $sql = "UPDATE employee SET Employee_ID='$newempid', FName='$newempfname', LName='$newemplname', Gender='$newempgender', Date_of_Birth='$newempdob', Company_Email='$newempmail', Dept_Code='$newempdeptcode', Date_Of_Employment='$newempdoe' WHERE Employee_ID='$newempid'";
       if (mysqli_query($conn, $sql)) {
           echo "Record updated successfully";

       } else {
           echo "Error updating record: " . mysqli_error($conn);
       }
    }


    // get the branch ID from the POST data
    $updatethis = $_POST['updateid'];

    // sql to get branch data
    $sql = "SELECT Employee_ID,FName,LName,Gender,Date_of_Birth,Company_Email,Dept_Code,Date_of_Employment FROM employee WHERE Employee_ID = '$updatethis'";
    $result = $conn->query($sql); //perform query
    $row = $result->fetch_assoc(); //get results


    $empid = $row['Employee_ID'];
    $empfname = $row['FName'];
    $emplname = $row['LName'];
    $empgender = $row['Gender'];
    $empdob = $row['Date_of_Birth'];
    $empemail = $row['Company_Email'];
    $empdeptcode = $row['Dept_Code'];
    $empdoe = $row['Date_of_Employment'];

    $data = array(
        "empid_sent" => $empid,
        "empfname_sent" => $empfname,
        "emplname_sent" => $emplname,
        "empgender_sent" => $empgender,
        "empdob_sent" => $empdob,
        "empemail_sent"=> $empemail,
        "empdeptcode_sent"=> $empdeptcode,
        "empdoe_sent" => $empdoe


    );

    header("Content-Type: application/json");

    // Return the data as JSON
    echo json_encode($data);

    // close connection
    $conn->close();
}


