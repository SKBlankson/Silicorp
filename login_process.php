<?php
	session_start();
	?>
	<?php
	if (isset($_POST['login-pages'])) 
{
	//collection form data
	$user_name =  $_POST['username'];
	$user_pass = $_POST['password'];

	//database connection parameters
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "semi_conductor_management_system";

	// Create connection
	$con = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($con->connect_error) {
		//stop executing the code and echo error
	  die("Connection failed: " . $con->connect_error);
	} }

	$user_name = stripcslashes($user_name);  
    $user_pass = stripcslashes($user_pass);  
    $user_name = mysqli_real_escape_string($con, $user_name);  
    $user_pass = mysqli_real_escape_string($con, $user_pass); 
    $error = "Username/Password incorrect, please re-enter details";
		
	$sql = "select *from users where User_name = '$user_name'";  
    $result = mysqli_query($con, $sql);  
    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
    $count = mysqli_num_rows($result);	
	
    if($count == 1 && password_verify($user_pass, $row['User_password'])){
    	$user_id = $row['User_id']; 
    	$fname = $row['Fname'];
    	$lname = $row['Lname'];
    	$user_name = $row['User_name']; 
    	$user_pass = $row['User_password']; 
    	$user_role = $row['User_role']; 

    	$_SESSION['User_id'] = $user_id;
    	$_SESSION['User_password'] = $user_pass;
    	
    	header('Location: dashboard.php');
    	exit();
    	alert('this works i guess');
    }

    else{
		$_SESSION['error'] = $error;
    	header('Location: pages-login.php');
    	exit();
	    }

    // 	if($user_status == 2){
    // 		header("Location: inactive.php");
    // 		exit();
    // 	} 
    // 	else{
    // 		session_start();
	// 		$_SESSION['user_id'] = $user_id;
	// 		$_SESSION['user_name'] = $user_name;
	// 		$_SESSION['user_role'] = $user_role;

	// 		if($_SESSION['user_role'] == 2){
	// 			header("Location: standardindex.php");
    // 			exit();
	// 		}
	// 		else{
	// 			header("Location: adminindex.php");
    // 			exit();
	// 		}
    // 	}
    // }
    // else{
    // 	header("Location: login.php");
    // 	exit();
    // }
?>
