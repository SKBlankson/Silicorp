<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "semi_conductor_management_system";

$conn = new mysqli($servername, $username, $password, $dbname);

echo 'i am processing';

// check if the delete button was clicked
if(isset($_GET['deletebranch'])) {
    // get the item ID from the POST data
    $deletethis = $_GET['deleteid'];
    echo '$deletethis';

    // sql to delete a record
    $sql = "DELETE FROM branch WHERE Branch_ID='$deletethis'";


    // execute query
    if ($conn->query($sql) === TRUE) {
        echo 'record deleted';
//        header('LOCATION: actual_branch.php');
        exit;
    } else {
        echo "Error deleting record: " . $conn->error;
    }

    // close connection
    $conn->close();
}

////////////////////////////////////////
// check if the delete button was clicked
if(isset($_GET['deleteemp'])) {
    // get the item ID from the POST data
    $deletethis = $_GET['deleteid'];
    echo '$deletethis';

    // sql to delete a record
    $sql = "DELETE FROM employee WHERE Employee_ID='$deletethis'";


    // execute query
    if ($conn->query($sql) === TRUE) {
        echo 'record deleted';
//        header('LOCATION: actual_branch.php');
        exit;
    } else {
        echo "Error deleting record: " . $conn->error;
    }

    // close connection
    $conn->close();
}

////////////////////////////////////////

if(isset($_GET['deletefab'])) {
    // get the item ID from the POST data
    $deletethis = $_GET['deleteid'];
    echo '$deletethis';

    // sql to delete a record
    $sql = "DELETE FROM fabricator_partners WHERE Fabricator_ID='$deletethis'";


    // execute query
    if ($conn->query($sql) === TRUE) {
        echo 'record deleted';
//        header('LOCATION: actual_branch.php');
        exit;
    } else {
        echo "Error deleting record: " . $conn->error;
    }

    // close connection
    $conn->close();
}
////////////////////////////////
if(isset($_GET['deleteint'])) {
    // get the item ID from the POST data
    $deletethis = $_GET['deleteid'];
    echo '$deletethis';

    // sql to delete a record
    $sql = "DELETE FROM integrators WHERE Integrator_ID='$deletethis'";


    // execute query
    if ($conn->query($sql) === TRUE) {
        echo 'record deleted';
//        header('LOCATION: actual_branch.php');
        exit;
    } else {
        echo "Error deleting record: " . $conn->error;
    }

    // close connection
    $conn->close();
}


//////////////
if(isset($_GET['deletestore'])) {
    // get the item ID from the POST data
    $deletethis = $_GET['deleteid'];
//    echo '$deletethis';

    // sql to delete a record
    $sql = "DELETE FROM storefront_partners WHERE Storefront_ID='$deletethis'";


    // execute query
    if ($conn->query($sql) === TRUE) {
        echo 'record deleted';
//        header('LOCATION: actual_branch.php');
        exit;
    } else {
        echo "Error deleting record: " . $conn->error;
    }

    // close connection
    $conn->close();
}









?>







