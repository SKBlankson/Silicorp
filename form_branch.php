<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Forms / Layouts - Silicorp</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i">
    <link rel="stylesheet" href="assets/css/bootstrap-icons.css">
    <link rel="stylesheet" href="assets/css/boxicons.css">
    <link rel="stylesheet" href="assets/css/remixicon.css">
    <link rel="stylesheet" href="assets/css/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/css/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/css/vendor/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" href="assets/css/css/vendor/boxicons/css/boxicons.min.css">
    <link rel="stylesheet" href="assets/css/css/vendor/quill/quill.snow.css">
    <link rel="stylesheet" href="assets/css/css/vendor/quill/quill.bubble.css">
    <link rel="stylesheet" href="assets/css/css/vendor/remixicon/remixicon.css">
    <link rel="stylesheet" href="assets/css/css/vendor/simple-datatables/style.css">
    <link rel="stylesheet" href="assets/css/css/css/style.css">
    <link rel="stylesheet" href="assets/css/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/vendor/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" href="assets/css/vendor/boxicons/css/boxicons.min.css">
    <link rel="stylesheet" href="assets/css/vendor/quill/quill.snow.css">
    <link rel="stylesheet" href="assets/css/vendor/quill/quill.bubble.css">
    <link rel="stylesheet" href="assets/css/vendor/remixicon/remixicon.css">
    <link rel="stylesheet" href="assets/css/vendor/simple-datatables/style.css">
    <link rel="stylesheet" href="assets/css/css/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>
    <header class="d-flex align-items-center header fixed-top" id="header">
        <div class="d-flex justify-content-between align-items-center"><a class="d-flex align-items-center logo" href="index.html"><img src="assets/img/logo.png" alt=""></a><i class="bi bi-list toggle-sidebar-btn"></i></div>
        <div class="search-bar">
            <form class="d-flex align-items-center search-form" method="POST" action="#"><input type="text" name="query" placeholder="Search" title="Enter search keyword"><button type="submit" title="Search"><i class="bi bi-search"></i></button></form>
        </div>
        <nav class="ms-auto header-nav">
            <ul class="d-flex align-items-center">
                <li class="d-block d-lg-none nav-item"><a class="nav-link nav-icon search-bar-toggle" href="#"><i class="bi bi-search"></i></a></li>
                <li class="nav-item dropdown"><a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-bell"></i><span class="badge bg-primary badge-number">4</span></a><ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications"><li class="dropdown-header">              You have 4 new notifications              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a></li><li><hr class="dropdown-divider"></li><li class="notification-item"><i class="bi bi-exclamation-circle text-warning"></i><div><h4>Lorem Ipsum</h4><p>Quae dolorem earum veritatis oditseno</p><p>30 min. ago</p></div></li><li><hr class="dropdown-divider"></li><li class="notification-item"><i class="bi bi-x-circle text-danger"></i><div><h4>Atque rerum nesciunt</h4><p>Quae dolorem earum veritatis oditseno</p><p>1 hr. ago</p></div></li><li><hr class="dropdown-divider"></li><li class="notification-item"><i class="bi bi-check-circle text-success"></i><div><h4>Sit rerum fuga</h4><p>Quae dolorem earum veritatis oditseno</p><p>2 hrs. ago</p></div></li><li><hr class="dropdown-divider"></li><li class="notification-item"><i class="bi bi-info-circle text-primary"></i><div><h4>Dicta reprehenderit</h4><p>Quae dolorem earum veritatis oditseno</p><p>4 hrs. ago</p></div></li><li><hr class="dropdown-divider"></li><li class="dropdown-footer"><a href="#">Show all notifications</a></li></ul></li>
                <li class="nav-item dropdown"><a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-chat-left-text"></i><span class="badge bg-success badge-number">2</span></a><ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages"><li class="dropdown-header">              You have 2 new messages              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a></li><li><hr class="dropdown-divider"></li><li class="message-item"><a href="#"><img src="assets/img/IMG_1487.jpg" alt="" class="rounded-circle"><div><h4>Samuel Blankson</h4><p>Don't forget to input those new fabricator partners we just signed with.</p><p>4 hrs. ago</p></div></a></li><li><hr class="dropdown-divider"></li><li class="message-item"><a href="#"><img src="assets/img/IMG_3232.jpg" alt="" class="rounded-circle"><div><h4>Edem Afenyo</h4><p>How are we coming along with acquiring more semiconductors?</p><p>6 hrs. ago</p></div></a></li><li><hr class="dropdown-divider"></li><li class="dropdown-footer"><a href="#">Show all messages</a></li></ul></li>
                <li class="nav-item dropdown pe-3"><a class="d-flex align-items-center nav-link nav-profile pe-0" href="#" data-bs-toggle="dropdown"><img class="rounded-circle" src="assets/img/IMG_3222.jpg" alt="Profile"><span class="d-none d-md-block dropdown-toggle ps-2">H. Wood</span></a><ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile"><li class="dropdown-header"><h6>Henry Wood</h6><span>Administrator</span></li><li><hr class="dropdown-divider"></li><li><a class="dropdown-item d-flex align-items-center" href="users-profile.html"><i class="bi bi-person"></i><span>My Profile</span></a></li><li><hr class="dropdown-divider"></li><li><a class="dropdown-item d-flex align-items-center" href="users-profile.html"><i class="bi bi-gear"></i><span>Account Settings</span></a></li><li><hr class="dropdown-divider"></li><li><a class="dropdown-item d-flex align-items-center" href="pages-faq.html"><i class="bi bi-question-circle"></i><span>Need Help?</span></a></li><li><hr class="dropdown-divider"></li><li><a class="dropdown-item d-flex align-items-center" href="#"><i class="bi bi-box-arrow-right"></i><span>Sign Out</span></a></li></ul></li>
            </ul>
        </nav>
    </header>
    <aside id="sidebar" class="sidebar">
        <ul class="sidebar-nav" id="sidebar-nav">
            <li class="nav-item"><a class="nav-link" href="index.html"><i class="bi bi-grid"></i><span>Dashboard</span></a></li>
            <li class="nav-item"><a class="nav-link collapsed" href="tables-general.html"><i class="bi bi-card-list"></i><span>Data Repository</span></a></li>
            <li class="nav-item"><a class="nav-link" data-bs-target="#forms-nav" href="forms-layouts.html"><i class="bi bi-journal-text"></i><span>Forms</span></a></li>
        </ul>
    </aside>
    <main id="main" class="main">
        <div class="pagetitle">
            <h1>Branch</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item">Forms</li>
                    <li class="breadcrumb-item active">Branch</li>
                </ol>
            </nav>
        </div>
        <section class="section">
            <div class="row">
                <div class="col-lg-6 col-xxl-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="row g-3" id="branchform">
                                <div class="col-12"><label class="form-label form-label" for="inputNanme4">Branch ID</label><input class="form-control form-control" type="text" id="branchid"></div>
                                <div class="col-12"><label class="form-label form-label" for="inputNanme4">&nbsp;Branch Name</label><input class="form-control form-control" type="text" id="branchname"></div>
<!--                                <div class="col-12"><label class="form-label form-label" for="inputNanme4">Location ID</label><input class="form-control form-control" type="text" id="locationid"></div>-->
                                <div  class="col-12">
                                <label class="form-label form-label" for="inputNanme4">Location ID</label>
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
                                echo "<select name='options' class='form-control' id='locationid''>";
                                if ($result->num_rows > 0) {
                                    while ($row = $result->fetch_assoc()) {
                                        echo "<option  value=' " . $row["Location_ID"] . "'>" . $row["Location_ID"] . "</option>";
                                    }
                                } else {
                                    echo "<option value=''>No options available</option>";
                                }
                                echo "</select>";

                                // close database connection
                                $conn->close();
                                ?>
                                </div>
                                <div class="text-center"><button class="btn btn-primary" type="submit" id="submit_form">Submit</button><button class="btn btn-secondary" type="reset">Reset</button></div>
                            </form>
                        </div>
                    </div>
                    <div class="card"></div>
                    <div class="card"></div>
                </div>
            </div>
        </section>
        </main>
    <footer id="footer" class="footer">
        
    </footer><a class="d-flex justify-content-center align-items-center back-to-top" href="#"><i class="bi bi-arrow-up-short"></i></a>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/vendor/apexcharts/apexcharts.min.js"></script>
    <script src="assets/js/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/vendor/chart.js/chart.umd.js"></script>
    <script src="assets/js/vendor/echarts/echarts.min.js"></script>
    <script src="assets/js/vendor/quill/quill.min.js"></script>
    <script src="assets/js/vendor/simple-datatables/simple-datatables.js"></script>
    <script src="assets/js/vendor/tinymce/tinymce.min.js"></script>
    <script src="assets/js/vendor/php-email-form/validate.js"></script>
    <script src="assets/js/js/main.js"></script>
    <script src="assets/js/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/js/vendor/apexcharts/apexcharts.min.js"></script>
    <script src="assets/js/js/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/js/vendor/chart.js/chart.umd.js"></script>
    <script src="assets/js/js/vendor/echarts/echarts.min.js"></script>
    <script src="assets/js/js/vendor/quill/quill.min.js"></script>
    <script src="assets/js/js/vendor/simple-datatables/simple-datatables.js"></script>
    <script src="assets/js/js/vendor/tinymce/tinymce.min.js"></script>
    <script src="assets/js/js/vendor/php-email-form/validate.js"></script>
    <script src="assets/js/js/js/main.js"></script>

    <script>
        $(document).ready(
     function() {
    $('#submit_form').click(function(event) {
    event.preventDefault();
      var formname = 'branchform';
      var branchid = $('#branchid').val();
      var branchname = $('#branchname').val();
      var locationid = $('#locationid').val();
      var data = {
        formid: formname,
        branchid: branchid,
        branchname: branchname,
        locationid: locationid
      };


      // console.log(data);
      $.ajax({
        url: 'form_proc.php',
        type: 'POST',
        data: $.param(data),
        success: function(response) {
          console.log('Request successfully sent to server!');
          // console.log(response);
          // alert("Record was added successfully!");
        },
        error: function(xhr, status, error) {
          console.log('Request failed!');
          console.log(status);
          console.log(error);
          alert("Record failed to add");
        }
      });

    });
});
      

    </script>
</body>

</html>