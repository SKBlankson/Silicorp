<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Pages / Register </title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin - v2.5.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="index.html" class="logo d-flex align-items-center w-auto">
                  <img src="assets/img/logo.png" alt="">
<!--                  <span class="d-none d-lg-block">NiceAdmin</span>-->
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Create an Account</h5>
                    <p class="text-center small">Enter your personal details to create account</p>
                  </div>
                  

                  <form class="row g-3 needs-validation"action = "Registration_process.php" method="GET" novalidate> 
                    <?php
                        if(isset($_SESSION['welcome'])) {
                            echo "<p>" . $_SESSION['welcome'] . "</p>";
                            unset($_SESSION['welcome']);
                        }
                    ?>
                    <div class="col-12">
                    <div style="display: flex; text-align: left; gap: 30%;">
                      <label for="fname" class="form-label">First Name</label>
                      <label for="lname" class="form-label">Last Name</label>
                    </div>
                    <!-- first name last name inputs -->
                        <div style="display: flex; gap: 5px">
                            <input type="text" name="fname" class="form-control" id="fname" required>
                            <input type="text" name="lname" class="form-control" id="lname" required>

                        </div>
                      
                      <div class="invalid-feedback">Please, enter your name!</div>
                    </div>

                    <!-- <div class="col-12">
                      <label for="email" class="form-label">Your Email</label>
                      <input type="email" name="email" class="form-control" id="email" required>
                      <div class="invalid-feedback">Please enter a valid Email adddress!</div>
                    </div> -->

                    <div class="col-12">
                      <label for="email" class="form-label">Email</label>
                      <div class="input-group has-validation">
                        <span class="input-group-text" id="inputGroupPrepend">@</span>
                        <input type="text" name="email" class="form-control" id="email" required>
                        <div class="invalid-feedback" id="invalid-email">Please enter a valid Email.</div>
                      </div>
                    </div>
                    <?php
                        if(isset($_SESSION['email_error'])) {
                            echo '<p style="color:red">' . $_SESSION['email_error'] . '</p>';
                            unset($_SESSION['email_error']);
                        }
                    ?>

                    <div class="col-12">
                      <label for="password" class="form-label">Password</label>
                      <input type="password" name="password" class="form-control" id="password" required>
                      <div class="invalid-feedback" id="invalid-password">Please enter your password!</div>
                    </div>

                    <div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" name="terms" type="checkbox" value="" id="acceptTerms" required>
                        <label class="form-check-label" for="acceptTerms">I agree and accept the <a href="#">terms and conditions</a></label>
                        <div class="invalid-feedback" id="invalid-submit">You must agree before submitting.</div>
                      </div>
                    </div>
                    <?php
                        
                        if(isset($_SESSION['duplicate'])) {
                             echo '<p style="color:red">' . $_SESSION['duplicate'] . '</p>';
                             unset($_SESSION['duplicate']);
                                  }
                                         ?> 
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit" name = "register" id = "register" onclick = "registration();">Create Account
                      </button>
                    </div>
                    
                    <div class="col-12">
                      <p class="small mb-0">Already have an account? <a href="pages-login.php">Log in</a></p>
                    </div>
                  </form>

                </div>
              </div>

              

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  <script type="text/javascript">

    
    function registration(){

      // var username = document.getElementById('username').value;
      // var password = document.getElementById('password').value;

      var fname = $('#user_fname').val();
      var lname = $('#user_lname').val();
      var username = $('#user_email').val();
      var pass = $('#password').val();
      var data = {
        formid: formname,
        branchid: branchid,
        branchname: branchname,
        locationid: locationid
      };

      console.log(data);
      if(validationreg()){
              $.ajax({
                      url: "Registration_process.php", 
                      type: "GET",
                      data: data,
                      dataType: "html",
                      cache: false,
                      beforeSend: function() {    
                          console.log("Processing...");
                      },
                      success: 
                            function(data){
                              if(data == "OK"){
                                  return 0 ;
                              }else{
                                  return 0;
                              }
                          }

              });

          }else{
              //alert("Incorrect data");
          }
}

  </script>




</body>

</html>