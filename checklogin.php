 
 //this is the configeration file; 
 
 <?php
include('conn.php');

$username=$_POST['username'];
$password=$_POST['password'];


// set the connect of username and password

$sql="select * from admin where username='$username' and password='$password'";
$rs=mysqli_query($conn,$sql);

// if log in successfully

if($row=mysqli_fetch_assoc($rs)){
	session_start();
	$_SESSION['username']=$row['username'];
	$_SESSION['userid']=$row['id'];
	$_SESSION['type']=$row['flag'];
	header('Location:g_list.php');
}
// password or username was not right
else{
	echo'login failed, please reenter your username and password ';exit;	
}
