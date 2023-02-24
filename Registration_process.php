<?php
session_start(); 
?>
<?php 

//check if register form was submited
//by checking if the submit button element name was sent as part of the request

if (isset($_GET['register'])) 
{
	//collection form data
	$user_fname = $_GET['fname'];
	$user_lname = $_GET['lname'];
	$user_email = $_GET['email'];
	$user_pass = $_GET['password'];


	//database connection parameters
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "Silicorp_Users";

	$expression = '/^[A-Za-z]+(\.[A-Za-z]+)?@amd\.cm$/';

	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
		//stop executing the code and echo error
	  die("Connection failed: " . $conn->connect_error);
	}} 

	//encrypt password
	//use the php password_hash function
	$encrypted_pass = password_hash($user_pass, PASSWORD_DEFAULT);

	

	$sql_search = "select *from users where User_name = '$user_email'";

	$result = mysqli_query($conn, $sql_search);  
    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
    $count = mysqli_num_rows($result);	
    $email_error = "Wrong Email format, please re-enter. format: firstname.lastname@amd.cm";
    $duplicate_error = "Username is taken, Email has already been registered";
    $welcome = "Welcome";
	
	$user_email = stripcslashes($user_email);  
    $user_email = mysqli_real_escape_string($conn, $user_email); 
    
    
	if ($count === 0) {
	    if (preg_match($expression, $user_email)) {
	        //write query
	        $query = "INSERT INTO users (FName, LName, User_name, User_password, User_role)
	                  VALUES ('$user_fname', '$user_lname', '$user_email', '$encrypted_pass', '1')";
	        $conn->query($query);

	        $_SESSION['user_email'] = $user_email;
	        $_SESSION['welcome'] = $welcome;

	        sleep(2);
	        header("Location: pages-login.php");
	        exit();
	    }
		else{
    		$_SESSION['email_error']  = $email_error;
    		header('Location: pages-registration.php');
    		exit();
    	}
	}
    	
    else{
		$_SESSION['duplicate'] = $duplicate_error;
    	header("Location: pages-registration.php");
		exit();
			}
		

	
	$conn->close();


    

	

   
?>