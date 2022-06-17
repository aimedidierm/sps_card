<?php 
session_start();
require 'php-includes/connect.php';
extract($_POST);
$password=md5($password);
$query = "SELECT id, email FROM seller WHERE email= ? AND password = ? limit 1";
$stmt = $db->prepare($query);
$stmt->execute(array($email, $password));
$rows = $stmt->fetch(PDO::FETCH_ASSOC);
if ($stmt->rowCount()>0) {
	$_SESSION['code'] = $email;
	$_SESSION['id'] = session_id();
	$_SESSION['login_type'] = "Seller";
	echo "<script>window.location.assign('seller/dashboard.php')</script>";

}/*
$query = "SELECT * FROM mbofficers WHERE username= ? AND password = ? AND status = '0' limit 1";
$stmt = $db->prepare($query);
$stmt->execute(array($code, $password));
$rows = $stmt->fetchAll();
if ($stmt->rowCount()>0) {
	$_SESSION['code'] = $code;
	$_SESSION['id'] = session_id();
	$_SESSION['login_type'] = "MBofficer";

	// echo "<script>alert('You Are Logged In');window.location.assign('mbofficer/dashboard.php')</script>";
	echo "<script>window.location.assign('mbofficer/dashboard.php')</script>";

}
$query = "SELECT * FROM manager WHERE username= ? AND password = ? AND status = '0' limit 1";
$stmt = $db->prepare($query);
$stmt->execute(array($code, $password));
$rows = $stmt->fetchAll();
if ($stmt->rowCount()>0) {
	$_SESSION['code'] = $code;
	$_SESSION['id'] = session_id();
	$_SESSION['login_type'] = "Manager";

	// echo "<script>alert('You Are Logged In');window.location.assign('manager/dashboard.php')</script>";
	echo "<script>window.location.assign('manager/dashboard.php')</script>";

}
$query = "SELECT * FROM admin WHERE username= ? AND password = ? AND status = '0' limit 1";
$stmt = $db->prepare($query);
$stmt->execute(array($code, $password));
$rows = $stmt->fetchAll();
if ($stmt->rowCount()>0) {
	$_SESSION['userid'] = $code;
	$_SESSION['id'] = session_id();
	$_SESSION['login_type'] = "Admin";

	// echo "<script>alert('You Are Logged In');window.location.assign('admin/dashboard.php')</script>";
	echo "<script>window.location.assign('admin/dashboard.php')</script>";

}*/else{
	echo "<script>alert('Your ID or Password is Wrong');window.location.assign('index.php')</script>";
}
?>