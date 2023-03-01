<?php
  // establish database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "semi_conductor_management_system";

$conn = new mysqli($servername, $username, $password, $dbname);


// check if the delete button was clicked
if(isset($_POST['deletebranch'])) {
    // get the item ID from the POST data
    $item_id = $_POST['item_id'];

    // display a confirmation prompt
    echo "<script>
        var confirm_delete = confirm('Are you sure you want to delete this item?');
        if(confirm_delete == true) {
            // delete the item from the database
            window.location.href = 'delete_item.php?id=".$item_id."';
        }
    </script>";
}
?>

