<?php
ini_set('display_errors',1);
ini_set('display_startup_errors',1);
error_reporting(E_ALL);
require '../php-includes/connect.php';
require 'php-includes/check-login.php';
$query = "SELECT * FROM seller WHERE email= ? limit 1";
$stmt = $db->prepare($query);
$stmt->execute(array($_SESSION['code']));
$rows = $stmt->fetch(PDO::FETCH_ASSOC);
if ($stmt->rowCount()>0) {
  $names="sample";
  $email="sample";
  $address="sample";
  $telephone="sample";
}
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Seller</title>
	<!-- Bootstrap Styles-->
    <link href="../assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FontAwesome Styles-->
    <link href="../assets/css/font-awesome.css" rel="stylesheet" />
        <!-- Custom Styles-->
    <link href="../assets/css/custom-styles.css" rel="stylesheet" />
     <!-- Google Fonts-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <?php require 'php-includes/nav.php';?>
        <div id="page-wrapper">
		  <div class="header"> 
        <h1 class="page-header">Settings</h1>
          <ol class="breadcrumb">
            <li><a href="dashboard.php">Home</a></li>
            <li class="active">Settings</li>
          </ol>
			<h1>						
		</div>
    <div id="page-inner"> 
              <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            User details
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>Names</label>
                                            <input class="form-control" value="<?php echo $names?>" disabled>
                                        </div>
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input class="form-control" value="<?php echo $email?>" disabled>
                                        </div>
                                        <div class="form-group">
                                            <label>Address</label>
                                            <input class="form-control" value="<?php echo $address?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Mobile number</label>
                                            <input class="form-control" value="<?php echo $telephone?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Confirm password</label>
                                            <input class="form-control">
                                        </div>
                                        <div class="form-group">
                                        <input type="submit" name="submit" class="btn btn-info success" value="Update">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              </div>
    </div>
            <div id="page-inner"> 
				 <footer><p>All right reserved.</p></footer>
				</div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="../assets/js/jquery-1.10.2.js"></script>
      <!-- Bootstrap Js -->
    <script src="../assets/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="../assets/js/jquery.metisMenu.js"></script>
      <!-- Custom Js -->
    <script src="../assets/js/custom-scripts.js"></script>
    
   
</body>
</html>