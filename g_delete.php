<?php
include('conn.php');


$id=$_GET['id'];

// use the command 'delete' to delete items from the data base
	
	$sql="delete from product where product_id=$id";
	$r=mysqli_query($conn,$sql);
	
	if($r){

		// out put success
    echo "<script>alert('Success');</script>";
}else{
	//out put false
    echo "<script>alert('false');</script>";
}
echo "<script>location.href='g_list.php'</script>";

