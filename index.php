<?php  
    session_start();
    if (!isset($_SESSION['User_id']))
        header("Location: pages-login.php");
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Forms / Layouts - NiceAdmin Bootstrap Template</title>
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

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
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

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
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
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-gear"></i>
                <span>Account Settings</span>
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
            <li class="nav-item"><a class="nav-link" href="index.html"><i class="bi bi-grid"></i><span>Dashboard</span></a></li>
            <li class="nav-item"><a class="nav-link collapsed" href="pages-error-404.html"><i class="bi bi-card-list"></i><span>Data Repository</span></a></li>
            <li class="nav-item"><a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#"><i class="bi bi-journal-text"></i><span>Archives</span><i class="ms-auto bi bi-chevron-down"></i></a><ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav"><li><a href="forms-layouts.html"><i class="bi bi-circle"></i><span>Employees</span></a></li><li><a href="pages-error-404.html"><i class="bi bi-circle"></i><span>Fabricator Partners</span></a></li><li><a href="pages-error-404.html"><i class="bi bi-circle"></i><span>Integrator Partners</span></a></li><li><a href="pages-error-404.html"><i class="bi bi-circle"></i><span>Store-Front Partners</span></a></li></ul></li>
            <li class="nav-item"><a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="pages-error-404.html"><i class="bi bi-layout-text-window-reverse"></i><span>Metrics</span><i></i></a></li>
        </ul>
    </aside>
    <main id="main" class="main">
        <div class="pagetitle">
            <h1>Dashboard</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html"><span>Home</span></a></li>
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
                                                    <td>5680</td>
                                                </tr>
                                                <tr>
                                                    <td>Full Time</td>
                                                    <td> 60%</td>
                                                </tr>
                                                <tr>
                                                    <td>Part Time</td>
                                                    <td>20%</td>
                                                </tr>
                                                <tr>
                                                    <td>Interns</td>
                                                    <td>20%</td>
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
                                                    <td>99</td>
                                                </tr>
                                                <tr>
                                                    <td>Locations</td>
                                                    <td>110</td>
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
                                                    <td>110</td>
                                                </tr>
                                                <tr>
                                                    <td>CPU Partners</td>
                                                    <td>70</td>
                                                </tr>
                                                <tr>
                                                    <td>GPU Partners</td>
                                                    <td>40</td>
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
                                                    <td>50</td>
                                                </tr>
                                                <tr>
                                                    <td>CPU Fabricators&nbsp;</td>
                                                    <td>30</td>
                                                </tr>
                                                <tr>
                                                    <td>GPU Fabricators</td>
                                                    <td>20</td>
                                                </tr>
                                                <tr>
                                                    <td>Average Cost</td>
                                                    <td>$40</td>
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
                                                    <td>150</td>
                                                </tr>
                                                <tr>
                                                    <td>CPU Integrators</td>
                                                    <td>90</td>
                                                </tr>
                                                <tr>
                                                    <td>GPU Integrators</td>
                                                    <td>60</td>
                                                </tr>
                                                <tr>
                                                    <td>Average Cost</td>
                                                    <td>$35.60</td>
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
                                                    <td>37</td>
                                                </tr>
                                                <tr>
                                                    <td>Released</td>
                                                    <td>25</td>
                                                </tr>
                                                <tr>
                                                    <td>Unreleased</td>
                                                    <td>12</td>
                                                </tr>
                                                <tr>
                                                    <td>Next Release</td>
                                                    <td>21/09/2023</td>
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
                                <div class="card-body">
                                    <h5 class="card-title">Recent Sales <span>| Today</span></h5>
                                    <div>
                                        <table class="table table-borderless datatable">
                                            <thead>
                                                <tr>
                                                    <th scope="col">#</th>
                                                    <th scope="col">Customer</th>
                                                    <th scope="col">Product</th>
                                                    <th scope="col">Price</th>
                                                    <th scope="col">Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td scope="row"><a href="#">#2457</a></td>
                                                    <td>Brandon Jacob</td>
                                                    <td><a href="#" class="text-primary">At praesentium minu</a></td>
                                                    <td>$64</td>
                                                    <td><span class="badge bg-success">Approved</span></td>
                                                </tr>
                                                <tr>
                                                    <td scope="row"><a href="#">#2147</a></td>
                                                    <td>Bridie Kessler</td>
                                                    <td><a href="#" class="text-primary">Blanditiis dolor omnis similique</a></td>
                                                    <td>$47</td>
                                                    <td><span class="badge bg-warning">Pending</span></td>
                                                </tr>
                                                <tr>
                                                    <td scope="row"><a href="#">#2049</a></td>
                                                    <td>Ashleigh Langosh</td>
                                                    <td><a href="#" class="text-primary">At recusandae consectetur</a></td>
                                                    <td>$147</td>
                                                    <td><span class="badge bg-success">Approved</span></td>
                                                </tr>
                                                <tr>
                                                    <td scope="row"><a href="#">#2644</a></td>
                                                    <td>Angus Grady</td>
                                                    <td><a href="#" class="text-primar">Ut voluptatem id earum et</a></td>
                                                    <td>$67</td>
                                                    <td><span class="badge bg-danger">Rejected</span></td>
                                                </tr>
                                                <tr>
                                                    <td scope="row"><a href="#">#2644</a></td>
                                                    <td>Raheem Lehner</td>
                                                    <td><a href="#" class="text-primary">Sunt similique distinctio</a></td>
                                                    <td>$165</td>
                                                    <td><span class="badge bg-success">Approved</span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="card top-selling overflow-auto">
                                <div class="filter"><a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                                        <li class="text-start dropdown-header"><h6>Filter</h6></li>
                                        <li><a class="dropdown-item" href="#">Today</a></li>
                                        <li><a class="dropdown-item" href="#">This Month</a></li>
                                        <li><a class="dropdown-item" href="#">This Year</a></li>
                                    </ul>
                                </div>
                                <div class="card-body pb-0">
                                    <h5 class="card-title">Top Selling <span>| Today</span></h5>
                                    <div>
                                        <table class="table table-borderless">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Preview</th>
                                                    <th scope="col">Product</th>
                                                    <th scope="col">Price</th>
                                                    <th scope="col">Sold</th>
                                                    <th scope="col">Revenue</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td scope="row"><img src="assets/img/chips8b74c2a3d3b543d58e6a4540e6469e25.jpg" alt=""></td>
                                                    <td><a class="fw-bold text-primary" href="#">A13 Semiconductor chip Gold series</a></td>
                                                    <td>$64</td>
                                                    <td class="fw-bold">124</td>
                                                    <td>$5,828</td>
                                                </tr>
                                                <tr>
                                                    <td scope="row"><img src="assets/img/product-2.jpg" alt=""></td>
                                                    <td><a class="fw-bold text-primary" href="#">Exercitationem similique doloremque</a></td>
                                                    <td>$46</td>
                                                    <td class="fw-bold">98</td>
                                                    <td>$4,508</td>
                                                </tr>
                                                <tr>
                                                    <td scope="row"><img src="assets/img/product-3.jpg" alt=""></td>
                                                    <td><a class="fw-bold text-primary" href="#">Doloribus nisi exercitationem</a></td>
                                                    <td>$59</td>
                                                    <td class="fw-bold">74</td>
                                                    <td>$4,366</td>
                                                </tr>
                                                <tr>
                                                    <td scope="row"><img src="assets/img/product-4.jpg" alt=""></td>
                                                    <td><a class="fw-bold text-primary" href="#">Officiis quaerat sint rerum error</a></td>
                                                    <td>$32</td>
                                                    <td class="fw-bold">63</td>
                                                    <td>$2,016</td>
                                                </tr>
                                                <tr>
                                                    <td scope="row"><img src="assets/img/product-5.jpg" alt=""></td>
                                                    <td><a class="fw-bold text-primary" href="#">Sit unde debitis delectus repellendus</a></td>
                                                    <td>$79</td>
                                                    <td class="fw-bold">41</td>
                                                    <td>$3,239</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
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
                        <div class="card-body pb-0">
                            <h5 class="card-title">Website Traffic <span>| Today</span></h5>
                            <div id="trafficChart" style="min-height: 400px;" class="echart"></div><script>
                document.addEventListener("DOMContentLoaded", () => {
                  echarts.init(document.querySelector("#trafficChart")).setOption({
                    tooltip: {
                      trigger: 'item'
                    },
                    legend: {
                      top: '5%',
                      left: 'center'
                    },
                    series: [{
                      name: 'Access From',
                      type: 'pie',
                      radius: ['40%', '70%'],
                      avoidLabelOverlap: false,
                      label: {
                        show: false,
                        position: 'center'
                      },
                      emphasis: {
                        label: {
                          show: true,
                          fontSize: '18',
                          fontWeight: 'bold'
                        }
                      },
                      labelLine: {
                        show: false
                      },
                      data: [{
                          value: 1048,
                          name: 'Search Engine'
                        },
                        {
                          value: 735,
                          name: 'Direct'
                        },
                        {
                          value: 580,
                          name: 'Email'
                        },
                        {
                          value: 484,
                          name: 'Union Ads'
                        },
                        {
                          value: 300,
                          name: 'Video Ads'
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
                        <div class="card-body pb-0">
                            <h5 class="card-title">News &amp; Updates <span>| Today</span></h5>
                            <div class="news">
                                <div class="post-item clearfix"><img src="assets/img/news-1.jpg" alt="">
                                    <h4><a href="#">Nihil blanditiis at in nihil autem</a></h4>
                                    <p>Sit recusandae non aspernatur laboriosam. Quia enim eligendi sed ut harum...</p>
                                </div>
                                <div class="post-item clearfix"><img src="assets/img/news-2.jpg" alt="">
                                    <h4><a href="#">Quidem autem et impedit</a></h4>
                                    <p>Illo nemo neque maiores vitae officiis cum eum turos elan dries werona nande...</p>
                                </div>
                                <div class="post-item clearfix"><img src="assets/img/news-3.jpg" alt="">
                                    <h4><a href="#">Id quia et et ut maxime similique occaecati ut</a></h4>
                                    <p>Fugiat voluptas vero eaque accusantium eos. Consequuntur sed ipsam et totam...</p>
                                </div>
                                <div class="post-item clearfix"><img src="assets/img/news-4.jpg" alt="">
                                    <h4><a href="#">Laborum corporis quo dara net para</a></h4>
                                    <p>Qui enim quia optio. Eligendi aut asperiores enim repellendusvel rerum cuder...</p>
                                </div>
                                <div class="post-item clearfix"><img src="assets/img/news-5.jpg" alt="">
                                    <h4><a href="#">Et dolores corrupti quae illo quod dolor</a></h4>
                                    <p>Odit ut eveniet modi reiciendis. Atque cupiditate libero beatae dignissimos eius...</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer id="footer" class="footer">
        <div class="copyright"><span> © Copyright </span><strong><span>NiceAdmin</span></strong><span>. All Rights Reserved </span></div>
        <div class="credits"><span> Designed by </span><a href="https://bootstrapmade.com/">BootstrapMade</a></div>
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
</body>

</html>