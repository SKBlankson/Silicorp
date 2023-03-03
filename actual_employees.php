<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Tables / General - Silicorp</title>
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

<?php
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

// Number of records to display per page
$records_per_page = 200;

// Get the total number of records in the table
$sql = "SELECT COUNT(*) AS count FROM employee";
$stmt = $pdo->prepare($sql);
$stmt->execute();
$result = $stmt->fetch(PDO::FETCH_ASSOC);
$total_records = $result['count'];

// Calculate the total number of pages
$total_pages = ceil($total_records / $records_per_page);

// Get the current page number
if (isset($_GET['page'])) {
    $current_page = $_GET['page'];
} else {
    $current_page = 1;
}

// Calculate the offset for the SQL query
$offset = ($current_page - 1) * $records_per_page;

// Retrieve the records for the current page
$sql = "SELECT Employee_ID,FName,LName,Gender,Date_of_Birth,Company_Email,Personal_Email,Dept_Code,Date_of_Employment FROM employee LIMIT $offset, $records_per_page";
$stmt = $pdo->prepare($sql);
$stmt->execute();
$results = $stmt->fetchAll(PDO::FETCH_ASSOC);

// create the HTML for the table rows
$tableBody = "";
foreach ($results as $row) {
    $tableBody .= "<tr>";
    $tableBody .= "<td>" . $row['Employee_ID'] . "</td>";
    $tableBody .= "<td>" . $row['FName'] . "</td>";
    $tableBody .= "<td>" . $row['LName'] . "</td>";
    $tableBody .= "<td>" . $row['Gender'] . "</td>";
    $tableBody .= "<td>" . $row['Date_of_Birth'] . "</td>";
    $tableBody .= "<td>" . $row['Company_Email'] . "</td>";
    // $tableBody .= "<td>" . $row['Personal_Email'] . "</td>";
    $tableBody .= "<td>" . $row['Dept_Code'] . "</td>";
    $tableBody .= "<td>" . $row['Date_of_Employment'] . "</td>";
    $tableBody .= "<td align='right'><button type='button' class='btn btn-danger' onclick='confirmdelete(this.id)' id='$row[Employee_ID]'><i class='bi bi-exclamation-octagon'></i></button> <button type='button' class='btn btn-info' onclick='showUpdateModal(this.id)' id='$row[Employee_ID]'><i class='bi bi-info-circle'></i></button></td>";
    $tableBody .= "</tr>";
}
$sql = "SELECT COUNT(*) AS count FROM employee WHERE Dept_Code = 'CS'";
$stmt = $pdo->prepare($sql);
$stmt->execute();
$result = $stmt->fetch(PDO::FETCH_ASSOC);

$sql = "SELECT COUNT(*) AS count FROM employee WHERE Dept_Code = 'HR'";
$stmt = $pdo->prepare($sql);
$stmt->execute();
$result2 = $stmt->fetch(PDO::FETCH_ASSOC);

$sql = "SELECT COUNT(*) AS count FROM employee WHERE Dept_Code = 'IT'";
$stmt = $pdo->prepare($sql);
$stmt->execute();
$result3 = $stmt->fetch(PDO::FETCH_ASSOC);

$sql = "SELECT COUNT(*) AS count FROM employee WHERE Dept_Code = 'MFP'";
$stmt = $pdo->prepare($sql);
$stmt->execute();
$result4 = $stmt->fetch(PDO::FETCH_ASSOC);

$sql = "SELECT COUNT(*) AS count FROM employee WHERE Dept_Code = 'RD'";
$stmt = $pdo->prepare($sql);
$stmt->execute();
$result5 = $stmt->fetch(PDO::FETCH_ASSOC);

$cs_count = $result['count'];
$hr_count = $result2['count'];
$it_count = $result3['count'];
$mfp_count = $result4['count'];
$rd_count = $result5['count'];
?>
    <header class="d-flex align-items-center header fixed-top" id="header">
        <div class="d-flex justify-content-between align-items-center"><a class="d-flex align-items-center logo" href="dashboard.php"><img src="assets/img/logo.png" alt=""></a><i class="bi bi-list toggle-sidebar-btn"></i></div>
        <div class="search-bar">
            <form class="d-flex align-items-center search-form" method="POST" action="#"><input type="text" name="query" placeholder="Search" title="Enter search keyword"><button type="submit" title="Search"><i class="bi bi-search"></i></button></form>
        </div>
        <nav class="ms-auto header-nav">
            <ul class="d-flex align-items-center">
                <li class="d-block d-lg-none nav-item"><a class="nav-link nav-icon search-bar-toggle" href="#"><i class="bi bi-search"></i></a></li>
                <li class="nav-item dropdown"><a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-bell"></i><span class="badge bg-primary badge-number">4</span></a><ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications"><li class="dropdown-header">              You have 4 new notifications              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a></li><li><hr class="dropdown-divider"></li><li class="notification-item"><i class="bi bi-exclamation-circle text-warning"></i><div><h4>Lorem Ipsum</h4><p>Quae dolorem earum veritatis oditseno</p><p>30 min. ago</p></div></li><li><hr class="dropdown-divider"></li><li class="notification-item"><i class="bi bi-x-circle text-danger"></i><div><h4>Atque rerum nesciunt</h4><p>Quae dolorem earum veritatis oditseno</p><p>1 hr. ago</p></div></li><li><hr class="dropdown-divider"></li><li class="notification-item"><i class="bi bi-check-circle text-success"></i><div><h4>Sit rerum fuga</h4><p>Quae dolorem earum veritatis oditseno</p><p>2 hrs. ago</p></div></li><li><hr class="dropdown-divider"></li><li class="notification-item"><i class="bi bi-info-circle text-primary"></i><div><h4>Dicta reprehenderit</h4><p>Quae dolorem earum veritatis oditseno</p><p>4 hrs. ago</p></div></li><li><hr class="dropdown-divider"></li><li class="dropdown-footer"><a href="#">Show all notifications</a></li></ul></li>
                <li class="nav-item dropdown"><a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-chat-left-text"></i><span class="badge bg-success badge-number">2</span></a><ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages"><li class="dropdown-header">              You have 2 new messages              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a></li><li><hr class="dropdown-divider"></li><li class="message-item"><a href="#"><img src="IMG_1487.jpgass="><div><h4>Samuel Blankson</h4><p>Don't forget to input those new fabricator partners we just signed with.</p><p>4 hrs. ago</p></div></a></li><li><hr class="dropdown-divider"></li><li class="message-item"><a href="#"><img src="IMG_3232.jpIMG_3232.jpgd-circle"><div><h4>Edem Afenyo</h4><p>How are we coming along with acquiring more semiconductors?</p><p>6 hrs. ago</p></div></a></li><li><hr class="dropdown-divider"></li><li class="dropdown-footer"><a href="#">Show all messages</a></li></ul></li>
                <li class="nav-item dropdown pe-3"><a class="d-flex align-items-center nav-link nav-profile pe-0" href="#" data-bs-toggle="dropdown"><img class="rounded-circle" src="assets/img/IMG_3222.jpg" alt="Profile"><span class="d-none d-md-block dropdown-toggle ps-2">H. Wood</span></a><ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile"><li class="dropdown-header"><h6>Henry Wood</h6><span>Administrator</span></li><li><hr class="dropdown-divider"></li><li><a class="dropdown-item d-flex align-items-center" href="users-profile.html"><i class="bi bi-person"></i><span>My Profile</span></a></li><li><hr class="dropdown-divider"></li><li><a class="dropdown-item d-flex align-items-center" href="users-profile.html"><i class="bi bi-gear"></i><span>Account Settings</span></a></li><li><hr class="dropdown-divider"></li><li><a class="dropdown-item d-flex align-items-center" href="pages-faq.html"><i class="bi bi-question-circle"></i><span>Need Help?</span></a></li><li><hr class="dropdown-divider"></li><li><a class="dropdown-item d-flex align-items-center" href="#"><i class="bi bi-box-arrow-right"></i><span>Sign Out</span></a></li></ul></li>
            </ul>
        </nav>
    </header>
    <aside id="sidebar" class="sidebar">
        <ul class="sidebar-nav" id="sidebar-nav">
            <li class="nav-item"><a class="nav-link" href="index.html"><i class="bi bi-grid"></i><span>Dashboard</span></a></li>
            <li class="nav-item"><a class="nav-link collapsed" data-bs-target="#Data_Repository-nav" data-bs-toggle="collapse" href="tables-general.php"><i class="bi bi-card-list"></i><span>Data Repository</span></a><ul id="Data_Repository-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav"><li><a href="actual_employees.php"><i class="bi bi-circle"></i><span>Employees</span></a></li><li><a href="actual_branch.php"><i class="bi bi-circle"></i><span>Branch</span></a></li><li><a href="actual_fabricators.php"><i class="bi bi-circle"></i><span>Fabricators</span></a></li><li><a href="actual_integrators.php"><i class="bi bi-circle"></i><span>Integrators</span></a></li><li><a href="actual_storefronts.php"><i class="bi bi-circle"></i><span>Store-front partners</span></a></li></ul></li>
        </ul>
    </aside>
    <main id="main" class="main">
        <div class="pagetitle">
            <h1>Employees</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item">Tables</li>
                    <li class="breadcrumb-item active">Employees</li>
                </ol>
            </nav>
        </div>
        <!-- Create a pie chart for the number of employees in each department -->
        <div class="card">
            <div class="card-body pb-0">
                <h5 class="card-title">Employee Distribution Across Departments</h5>
                <div id="trafficChart" style="min-height: 760px;" class="echart"></div><script>

                    var val1 = <?php  echo json_encode($cs_count) ?>;
                    var val2 = <?php  echo json_encode( $hr_count) ?>;
                    var val3 = <?php  echo json_encode( $it_count) ?>;
                    var val4 = <?php  echo json_encode( $mfp_count) ?>;
                    var val5 = <?php  echo json_encode( $rd_count) ?>;


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
                                    value: val1,
                                    name: 'Customer Service'
                                },
                                    {
                                        value: val2,
                                        name: 'Human Resources'
                                    },
                                    {
                                        value: val3,
                                        name: 'IT'
                                    },
                                    {
                                        value: val4,
                                        name: 'Marketing & Finance'
                                    },
                                    {
                                        value: val5,
                                        name: 'Research & Development'
                                    }
                                ]
                            }]
                        });
                    });
                </script>
            </div>
            <button class="btn btn-primary" type="button" align="right" style="margin-right: 0px;margin-left: 0px;" onclick="scrollToBottom()">Display Tables</button>
        </div>





        <section class="section">
            <div class="row">
                <div class="col-lg-12 col-xl-12 col-xxl-12" style="max-width: 100%;">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Employees</h5>
                            <div style="display: flex;justify-content: space-between;padding-bottom: 15pxs;"><button class="btn btn-success" type="button" style="margin-right: -1px;"><a href="form_emp.php" style="color: white">+Add Record</a></button><button class="btn btn-primary" type="button" align="right" style="margin-right: 0px;margin-left: 0px;">Display Graph</button></div>
                            <div>
                                <table class="table table-striped" >
                                    <thead>
                                        <tr>
                                            <th scope="col" >Employee ID</th>
                                            <th scope="col" >First Name</th>
                                            <th scope="col" >Last Name</th>
                                            <th scope="col">Gender</th>
                                            <th scope="col">DOB</th>
                                            <th scope="col">Company Email</th>
                                            <!-- <th scope="col">Personal Email</th> -->
                                            <th scope="col">Dept_Code</th>
                                            <th scope="col">Date of Employment</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody id="employeetable">
                                    
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="card"></div>
                    <div class="card"></div>
                    <div class="card"></div>
                </div>
            </div>
        </section>




        <!--        pop up for updating-->
        <!-- Vertically centered Modal -->
        <div class="modal fade" id="verticalycentered2" tabindex="-1">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Update Branch</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form class="row g-3">
                            <div class="col-12"><label class="form-label form-label" for="inputNanme4">Employee ID</label><input class="form-control form-control" type="text" id="inputNanme-1"></div>
                            <div class="col-12"><label class="form-label form-label" for="inputNanme4">First Name</label><input class="form-control form-control" type="text" id="inputNanme-9"></div>
                            <div class="col-12"><label class="form-label form-label" for="inputNanme4">Last Name</label><input class="form-control form-control" type="text" id="inputNanme-2"></div>
                            <div class="col-12"><label class="form-label form-label" for="inputNanme4">Date of Birth</label><input class="form-control form-control" type="date" id="dobin"></div>
                            <div class="col-12"><label class="form-label form-label" for="inputEmail4">Gender</label>
                                <select class="form-control" id="genderin">
                                    <option value="1">1</option>
                                    <option value="0">0</option>
                                </select>
                            </div>
                           
                            <div class="col-12"><label class="form-label form-label" for="inputNanme4">Company Email</label><input class="form-control form-control" type="text" id="inputNanme-3"></div>
<!--                            <div class="col-12"><label class="form-label form-label" for="inputNanme4">Personal Email</label><input class="form-control form-control" type="text" id="inputNanme-4"></div>-->
                            <div class="col-12"><label class="form-label form-label" for="inputNanme4">Department Code</label><input class="form-control form-control" type="text" id="inputNanme-5"></div>
                            <div class="col-12"><label class="form-label form-label" for="inputNanme4">Date of Employment</label><input class="form-control form-control" type="date" id="doein"></div>
                            
                        </form>


                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="button" onclick="confirmupdate()" class="btn btn-primary" id="updateconfirmed">Save changes</button>
                            </div>
                    </div>
                </div>
            </div><!-- End Vertically centered Modal-->


<script>
    // set the innerHTML of the table body to the tableBody variable
document.getElementById("employeetable").innerHTML = "<?php echo $tableBody?>";

    function showUpdateModal(buttonId) {
        $.ajax({
            type: "POST",
            url: "update.php",
            data: {
                updateemp: true,
                updateid: buttonId
            },
            dataType: "json",
            success: function(data) {
                // Handle the JSON response
                console.log(data.empid_sent);
                console.log(data.empfname_sent);
                console.log(data.emplname_sent);
                console.log(data.empgender_sent);
                console.log(data.empdob_sent);
                console.log(data.empemail_sent);
                console.log(data.empdeptcode_sent);
                console.log(data.empdoe_sent);

                // these variables are returned frm the server
                $('#inputNanme-1').val(data.empid_sent);
                $('#inputNanme-9').val(data.empfname_sent);
                $('#inputNanme-2').val(data.emplname_sent);
                $('#genderin').val(data.empgender_sent);
                $('#dobin').val(data.empdob_sent);
                $('#inputNanme-3').val(data.empemail_sent);
                $('#inputNanme-5').val(data.empdeptcode_sent);
                $('#doein').val(data.empdoe_sent);
                
            },
            error: function(jqXHR, textStatus, errorThrown) {
                // Handle any errors
                console.error("Error retrieving JSON data: " + textStatus + ", " + errorThrown);
            }
        });
        // show the pop up
        $('#verticalycentered2').modal('show');
        //
        //get updpate button and other fields

    }

    function confirmupdate(){
        var updatebutton = document.getElementById("updateconfirmed");
        var newempid = document.getElementById("inputNanme-1").value;
        var newempfname = document.getElementById("inputNanme-9").value;
        var newemplname = document.getElementById("inputNanme-2").value;
        var newempgender = document.getElementById("genderin").value;
        var newempdob = document.getElementById("dobin").value;
        var newempmail = document.getElementById("inputNanme-3").value;
        var newempdeptcode = document.getElementById("inputNanme-5").value;
        var newempdoe = document.getElementById("doein").value;
        
        
        var data = {
            updateemp: true,
            pushupdate: true,
            // updatebutton : updateconfirmed,
            newempid : newempid,
            newempfname : newempfname,
            newemplname : newemplname,
            newempgender : newempgender,
            newempdob : newempdob,
            newempmail : newempmail,
            newempdeptcode : newempdeptcode,
            newempdoe : newempdoe

        };

       

        //send request back to server to perform update
        $.ajax({
            type: "POST",
            url: "update.php",
            data: $.param(data)
        });
        //reload current page
        // alert("changes saved!")
        $('#verticalycentered').modal('hide');
        // alert("changes saved!")
        //reload current page
        // location.reload();





        // }
    }

    // delete functiion
    function confirmdelete(buttonId) {
        const confirmation = confirm("Are you sure you want to delete the record?");
        if (confirmation === true) {
            var data = {
                deleteid: buttonId,
                deleteemp: true
            };

            $.ajax({
                url: "delete.php",
                type: "GET",
                data: data,
                success: function(response) {
                    console.log(response)
                    // console.log(response);
                    // alert("Record was added successfully!");
                },
                error: function(xhr, status, error) {
                    console.log('Request failed!');
                    console.log(status);
                    console.log(error);
                }
            });

        } else {
            console.log("Request failed")
        }

        //reload current page
        location.reload();
    }




</script>
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
</body>

</html>