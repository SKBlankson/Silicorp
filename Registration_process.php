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
	$dbname = "silicorp";

	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
		//stop executing the code and echo error
	  die("Connection failed: " . $conn->connect_error);
	} 

	//encrypt password
	//use the php password_hard function
	$encrypted_pass = password_hash($user_pass, PASSWORD_DEFAULT);

	//write query
	//user role (1 is admin, 2 is standard user)
	//user status( 1 is active, 2 is inactive)
	$sql = "INSERT INTO users (FName, LName,User_name, User_password, User_role)
	VALUES ('$user_fname','$user_lname', '$user_email','$encrypted_pass', '1')";

	// check if query worked
	if ($conn->query($sql) === TRUE) {
	  
		//redirect to homepage
		header("Location: index.html");
		exit();

	} else {
		//echo error but continue executing the code to close the session
	  echo "Error: " . $sql . "<br>" . $conn->error;
	}

	//close database connection
	$conn->close();
}

	// $expression = "/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/";

    // if($email.match($expression)){
    //   alert('email is valid')
    //   //call the post method
    //   loadDoc(fname,lname,email, password, regbutton);
    // }
    // else{
    //   alert('email is wrong')
    //   header("Location: pages-registration.php");
    //   exit();
    //   return false;
    // }

else
{
	//redirect to register page
	echo("I don't think this worked");
	header("Location: pages-registration.php");
	exit();
}



?>