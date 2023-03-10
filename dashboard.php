<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard - Silicorp</title>
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
<<?php
    // Datababse connection parameters
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "semi_conductor_management_system";

    // create a connection 
    $conn = new mysqli($servername,$username,$password,$dbname);

    // check connection
    if ($conn->connect_error) {
        //stop executing the code and echo error
        die("Connection failed: " . $conn->connect_error);
    } 

    // Create a PDO object to connect to the database
    try {
        $pdo = new PDO("mysql:host=localhost;dbname=$dbname", $username, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        echo "Database connection failed: " . $e->getMessage();
    }


    // Get the total number of Employee records in the database
    $sql = "SELECT COUNT(*) AS count FROM Employee";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $total_employees=$result["count"];

    // Get the total number of fulltime employee records in the database
    $sql = "SELECT COUNT(*) AS count FROM fulltime";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $total_fullemployees=$result["count"];

    // Get the total number of part time employee records in the database
    $sql = "SELECT COUNT(*) AS count FROM parttime";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $total_partemployees=$result["count"];

    // Get the total number of intern records in the database
    $sql = "SELECT COUNT(*) AS count FROM intern";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $total_intern=$result["count"];

    // Get the total number of branches in the database
    $sql = "SELECT COUNT(*) AS count FROM Branch";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $total_branches=$result["count"];

    
    // Get the total number of locations in the database
    $sql = "SELECT COUNT(*) AS count FROM location";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $total_locations=$result["count"];

    // Get the total number of Storefront partners in the database
    $sql = "SELECT COUNT(*) AS count FROM Storefront_Partners";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $total_storefronts=$result["count"];

    // Get the total number of CPU Storefront partners in the database
    $sql = "SELECT COUNT(*) AS count FROM CPU_Storefront_Partners";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $total_cpustorefronts=$result["count"];

    // Get the total number of GPU Storefront partners in the database
    $sql = "SELECT COUNT(*) AS count FROM GPU_Storefront_Partners";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $total_gpustorefronts=$result["count"];

    // Get the total number of fabricator partners in the database
    $sql = "SELECT COUNT(*) AS count FROM Fabricator_Partners";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $total_fabricators=$result["count"];

    // Get the total number of cpu fabricator partners in the database
    $sql = "SELECT COUNT(*) AS count FROM CPU_FabricatorPartners";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $total_cpufabricators=$result["count"];

    // Get the total number of gpu fabricator partners in the database
    $sql = "SELECT COUNT(*) AS count FROM GPU_FabricatorPartners";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $total_gpufabricators=$result["count"];

    // Get the total number of fintegrators in the database
    $sql = "SELECT COUNT(*) AS count FROM Integrators";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $total_integrator=$result["count"];

    // Get the total number of cpu integrator partners in the database
    $sql = "SELECT COUNT(*) AS count FROM CPU_Integrators";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $total_cpuintegrator=$result["count"];

    // Get the total number of gpu integrator partners in the database
    $sql = "SELECT COUNT(*) AS count FROM GPU_Integrators";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $total_gpuintegrator=$result["count"];

    // Get the total number of R&D projects in the database
    $sql = "SELECT COUNT(*) AS count FROM RD_Projects";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $total_rdprojects=$result["count"];

    // Get the total number of released R&D projects in the database
    $sql = "SELECT COUNT(*) AS count FROM RD_Projects where Release_Status = 1 ";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $total_activerdprojects=$result["count"];

    // Get the total number of unreleased R&D projects in the database
    $sql = "SELECT COUNT(*) AS count FROM RD_Projects where Release_Status = 0";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $total_pendingrdprojects=$result["count"];

    // Get the next date of the next R&D project in the database
    $sql = "SELECT MAX(Launch_date) AS largest_date FROM RD_Projects;";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $nextgrdproject=$result["largest_date"];

    



?>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="dashboard.php" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="">
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->

        <li class="nav-item dropdown">

          <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
            <i class="bi bi-bell"></i>
            <span class="badge bg-primary badge-number">4</span>
          </a><!-- End Notification Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
            <li class="dropdown-header">
              You have 4 new notifications
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-exclamation-circle text-warning"></i>
              <div>
                <h4>Lorem Ipsum</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>30 min. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-x-circle text-danger"></i>
              <div>
                <h4>Atque rerum nesciunt</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>1 hr. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-check-circle text-success"></i>
              <div>
                <h4>Sit rerum fuga</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>2 hrs. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-info-circle text-primary"></i>
              <div>
                <h4>Dicta reprehenderit</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>4 hrs. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>
            <li class="dropdown-footer">
              <a href="#">Show all notifications</a>
            </li>

          </ul><!-- End Notification Dropdown Items -->

        </li><!-- End Notification Nav -->

        <li class="nav-item dropdown">

          <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
            <i class="bi bi-chat-left-text"></i>
            <span class="badge bg-success badge-number">2</span>
          </a><!-- End Messages Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
            <li class="dropdown-header">
              You have 2 new messages
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="#">
                <img src="assets/img/IMG_1487.jpg"  alt="" class="rounded-circle">
                <div>
                  <h4>Samuel Blankson</h4><p>Don't forget to input those new fabricator partners we just signed with.</p><p>4 hrs. ago</p></div></a></li><li><hr class="dropdown-divider"></li><li class="message-item"><a href="#"><img src="assets/img/IMG_3232.jpg" alt="" class="rounded-circle"><div><h4>Edem Afenyo</h4><p>How are we coming along with acquiring more semiconductors?</p><p>6 hrs. ago</p></div></a></li><li><hr class="dropdown-divider"></li><li class="dropdown-footer"><a href="#">Show all messages</a></li></ul></li>

        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="" data-bs-toggle="dropdown">
            <img src="assets/img/IMG_3222.jpg" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">H. Wood</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>Henry Wood</h6>
              <span>Administrator</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-person"></i>
                <span>My Profile</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>Need Help?</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="#">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
    <aside id="sidebar" class="sidebar">
        <ul class="sidebar-nav" id="sidebar-nav">
            <li class="nav-item">
                <a class="nav-link" href="dashboard.php"><i class="bi bi-grid"></i><span>Dashboard</span></a></li>
            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#Data_Repository-nav" data-bs-toggle="collapse" href="tables-general.php"><i class="bi bi-card-list"></i><span>Data Repository</span>
                </a>
                <ul id="Data_Repository-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
            <li>
              <a href="actual_employees.php">
              <i class="bi bi-circle"></i><span>Employees</span>
            </a>
          </li>
          <li>
            <a href="actual_branch.php">
              <i class="bi bi-circle"></i><span>Branch</span>
            </a>
          </li>
          <li>
            <a href="actual_fabricators.php">
              <i class="bi bi-circle"></i><span>Fabricators</span>
            </a>
          </li>
          <li>
            <a href="actual_integrators.php">
              <i class="bi bi-circle"></i><span>Integrators</span>
            </a>
          </li>
          <li>
            <a href="actual_storefronts.php">
              <i class="bi bi-circle"></i><span>Store-front partners</span>
            </a>
          </li>
      </ul>

      <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href='#'><i class="bi bi-journal-text"></i><span>Forms</span>
                </a>
                <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
            <li>
              <a href="form_emp.php">
              <i class="bi bi-circle"></i><span>Employees</span>
            </a>
          </li>
          <li>
            <a href="form_branch.php">
              <i class="bi bi-circle"></i><span>Branch</span>
            </a>
          </li>
          <li>
            <a href="form_fab.php">
              <i class="bi bi-circle"></i><span>Fabricators</span>
            </a>
          </li>
          <li>
            <a href="form_int.php">
              <i class="bi bi-circle"></i><span>Integrators</span>
            </a>
          </li>
          <li>
            <a href="form_sfp.html">
              <i class="bi bi-circle"></i><span>Store-front partners</span>
            </a>
          </li>
      </ul>
    </aside>
    <!-- End Sidebar-->
    <main id="main" class="main">
        <div class="pagetitle">
            <h1>Dashboard</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="dashboard.php"><span>Home</span></a></li>
                    <li class="breadcrumb-item active"><span>Dashboard</span></li>
                </ol>
            </nav>
        </div>
        <section class="section dashboard">
            <div class="row">
                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-md-6 col-xxl-4">
                            <div class="card"></div>
                            <div class="card">
                                <div class="card-body">

                                    <h4 class="card-title">Employees</h4>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr></tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Total</td>
                                                    <td><?php echo json_encode($total_employees) ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Full Time</td>
                                                    <td> <?php echo json_encode($total_fullemployees) ?> </td>
                                                </tr>
                                                <tr>
                                                    <td>Part Time</td>
                                                    <td><?php echo json_encode($total_partemployees) ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Interns</td>
                                                    <td><?php echo json_encode($total_intern) ?></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="col-md-6 col-xxl-4">
                            <br>
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Branch</h4>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr></tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Branches</td>
                                                    <td><?php echo json_encode($total_branches) ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Locations</td>
                                                    <td><?php echo json_encode($total_locations) ?></td>
                                                </tr>
                                                <tr></tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xxl-4 offset-xxl-0">
                            <div class="card"></div>
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">StoreFront Partners</h4>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr></tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Total</td>
                                                    <td><?php echo json_encode($total_storefronts) ?></td>
                                                </tr>
                                                <tr>
                                                    <td>CPU Partners</td>
                                                    <td><?php echo json_encode($total_cpustorefronts) ?></td>
                                                </tr>
                                                <tr>
                                                    <td>GPU Partners</td>
                                                    <td><?php echo json_encode($total_gpustorefronts) ?></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-12 col-xxl-4">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Fabricator Partners</h4>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr></tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Total</td>
                                                    <td><?php echo json_encode($total_fabricators) ?></td>
                                                </tr>
                                                <tr>
                                                    <td>CPU Fabricators&nbsp;</td>
                                                    <td><?php echo json_encode($total_cpufabricators) ?></td>
                                                </tr>
                                                <tr>
                                                    <td>GPU Fabricators</td>
                                                    <td><?php echo json_encode($total_gpufabricators) ?></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Integrator Partners</h4>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr></tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Total</td> 
                                                    <td><?php echo json_encode($total_integrator) ?></td>
                                                </tr>
                                                <tr>
                                                    <td>CPU Integrators</td>
                                                    <td><?php echo json_encode($total_cpuintegrator) ?></td>
                                                </tr>
                                                <tr>
                                                    <td>GPU Integrators</td>
                                                    <td><?php echo json_encode($total_gpuintegrator) ?></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">R&amp;D Projects</h4>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr></tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Total</td>
                                                    <td><?php echo json_encode($total_rdprojects) ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Released</td>
                                                    <td><?php echo json_encode($total_activerdprojects) ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Unreleased</td>
                                                    <td><?php echo json_encode($total_pendingrdprojects) ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Next Release</td>
                                                    <td><?php echo json_encode($nextgrdproject) ?></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="card recent-sales overflow-auto">
                                <div class="filter"><a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                                        <li class="text-start dropdown-header"><h6>Filter</h6></li>
                                        <li><a class="dropdown-item" href="#">Today</a></li>
                                        <li><a class="dropdown-item" href="#">This Month</a></li>
                                        <li><a class="dropdown-item" href="#">This Year</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col"></div>
                        <div class="col"></div>
                        <div class="col"></div>
                        <div class="col"></div>
                        <div class="col"></div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card">
                        <div class="filter"><a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                            <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                                <li class="text-start dropdown-header"><h6>Filter</h6></li>
                                <li><a class="dropdown-item" href="#">Today</a></li>
                                <li><a class="dropdown-item" href="#">This Month</a></li>
                                <li><a class="dropdown-item" href="#">This Year</a></li>
                            </ul>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Recent Activity <span>| Today</span></h5>
                            <div class="activity">
                                <div class="d-flex activity-item">
                                    <div class="activite-label"><span>32 min</span></div><i class="text-success align-self-start bi bi-circle-fill activity-badge"></i>
                                    <div class="activity-content"><span> Quia quae rerum </span><a class="fw-bold text-dark" href="#">explicabo officiis</a><span> beatae </span></div>
                                </div>
                                <div class="d-flex activity-item">
                                    <div class="activite-label"><span>56 min</span></div><i class="text-danger align-self-start bi bi-circle-fill activity-badge"></i>
                                    <div class="activity-content"><span> Voluptatem blanditiis blanditiis eveniet </span></div>
                                </div>
                                <div class="d-flex activity-item">
                                    <div class="activite-label"><span>2 hrs</span></div><i class="text-primary align-self-start bi bi-circle-fill activity-badge"></i>
                                    <div class="activity-content"><span> Voluptates corrupti molestias voluptatem </span></div>
                                </div>
                                <div class="d-flex activity-item">
                                    <div class="activite-label"><span>1 day</span></div><i class="text-info align-self-start bi bi-circle-fill activity-badge"></i>
                                    <div class="activity-content"><span> Tempore autem saepe </span><a class="fw-bold text-dark" href="#">occaecati voluptatem</a><span> tempore </span></div>
                                </div>
                                <div class="d-flex activity-item">
                                    <div class="activite-label"><span>2 days</span></div><i class="text-warning align-self-start bi bi-circle-fill activity-badge"></i>
                                    <div class="activity-content"><span> Est sit eum reiciendis exercitationem </span></div>
                                </div>
                                <div class="d-flex activity-item">
                                    <div class="activite-label"><span>4 weeks</span></div><i class="text-muted align-self-start bi bi-circle-fill activity-badge"></i>
                                    <div class="activity-content"><span> Dicta dolorem harum nulla eius. Ut quidem quidem sit quas </span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="filter"><a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                            <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                                <li class="text-start dropdown-header"><h6>Filter</h6></li>
                                <li><a class="dropdown-item" href="#">Today</a></li>
                                <li><a class="dropdown-item" href="#">This Month</a></li>
                                <li><a class="dropdown-item" href="#">This Year</a></li>
                            </ul>
                        </div>
                        <div class="card-body pb-0">
                            <h5 class="card-title">Budget Report <span>| This Month</span></h5>
                            <div id="budgetChart" style="min-height: 400px;" class="echart"></div><script>
                document.addEventListener("DOMContentLoaded", () => {
                  var budgetChart = echarts.init(document.querySelector("#budgetChart")).setOption({
                    legend: {
                      data: ['Allocated Budget', 'Actual Spending']
                    },
                    radar: {
                      // shape: 'circle',
                      indicator: [{
                          name: 'Sales',
                          max: 6500
                        },
                        {
                          name: 'Administration',
                          max: 16000
                        },
                        {
                          name: 'Information Technology',
                          max: 30000
                        },
                        {
                          name: 'Customer Support',
                          max: 38000
                        },
                        {
                          name: 'Development',
                          max: 52000
                        },
                        {
                          name: 'Marketing',
                          max: 25000
                        }
                      ]
                    },
                    series: [{
                      name: 'Budget vs spending',
                      type: 'radar',
                      data: [{
                          value: [4200, 3000, 20000, 35000, 50000, 18000],
                          name: 'Allocated Budget'
                        },
                        {
                          value: [5000, 14000, 28000, 26000, 42000, 21000],
                          name: 'Actual Spending'
                        }
                      ]
                    }]
                  });
                });
              </script>
                        </div>
                    </div>
                    <div class="card">
                        <div class="filter"><a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                            <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                                <li class="text-start dropdown-header"><h6>Filter</h6></li>
                                <li><a class="dropdown-item" href="#">Today</a></li>
                                <li><a class="dropdown-item" href="#">This Month</a></li>
                                <li><a class="dropdown-item" href="#">This Year</a></li>
                            </ul>
                        </div>
              </script>
                        </div>
                    </div>
                    <div class="card">
                        <div class="filter"><a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                            <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                                <li class="text-start dropdown-header"><h6>Filter</h6></li>
                                <li><a class="dropdown-item" href="#">Today</a></li>
                                <li><a class="dropdown-item" href="#">This Month</a></li>
                                <li><a class="dropdown-item" href="#">This Year</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
 <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
  </footer><!-- End Footer -->

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

</body>

</html>
