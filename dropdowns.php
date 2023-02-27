<?php
  // establish database connection
  $servername = "localhost";
$username = "root";
$password = "";
$dbname = "semi_conductor_management_system";

$conn = new mysqli($servername, $username, $password, $dbname);

// query the database for options
$sql = "SELECT Location_ID FROM location";
$result = $conn->query($sql);

// create dropdown list
echo "<select name='options'>";
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<option value=' " . $row["Location_ID"] . "'>" . $row["Location_ID"] . "</option>";
    }
} else {
    echo "<option value=''>No options available</option>";
}
echo "</select>";

// close database connection
$conn->close();
?>

