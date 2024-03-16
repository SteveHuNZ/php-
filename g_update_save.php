<?php
include('conn.php');
session_start();
/* get POST  data*/
$q=$_POST['q'];
$w=$_POST['w'];
$e=$_POST['e'];
$r=$_POST['r'];
$a=$_POST['a'];
$s=$_POST['s'];
$id=$_POST['id'];
$sql="update  product set category_id='$q',product_name='$w',product_description='$e',product_price='$r',product_is_featured='$a',product_rating='$s'";

if(!empty($_FILES["file"]["name"])){
$allowedExts = array("gif", "jpeg", "jpg", "png");
$temp = explode(".", $_FILES["file"]["name"]);
$extension = end($temp);    
    if ($_FILES["file"]["error"] > 0)
    {
        echo "error：: " . $_FILES["file"]["error"] . "<br>";
    }
    else
    {

        if (file_exists("uplode/" . $_FILES["file"]["name"]))
        {
            echo $_FILES["file"]["name"] . " documents already exist。 ";
        }
        else
        {
            $fname=time();
        	$img=$fname.'.'.$extension;
            // if upload file, and this file is not in the category set this upload to category
            move_uploaded_file($_FILES["file"]["tmp_name"], "./catalog/product/thumbnail/" . $img);
        }
    }

$img='./catalog/product/thumbnail/'.$img;
 $sql.=", product_thumbnail_url= '$img'";
}

if(!empty($_FILES["file2"]["name"])){

$allowedExts = array("gif", "jpeg", "jpg", "png");
$temp = explode(".", $_FILES["file2"]["name"]);
$extension = end($temp);    
    if ($_FILES["file2"]["error"] > 0)
    {
        echo "error：: " . $_FILES["file2"]["error"] . "<br>";
    }
    else
    {

        if (file_exists("uplode/" . $_FILES["file2"]["name"]))
        {
            echo $_FILES["file2"]["name"] . " files already exist。 ";
        }
        else
        {
            $fname=time();
            $img2=$fname.'.'.$extension;
    
             // if upload file, and this file is not in the category set this upload to category
            move_uploaded_file($_FILES["file2"]["tmp_name"], "./catalog/product/image/" . $img2);
        }
    }
$img2='./catalog/product/image/'.$img2;
$sql.=", product_image_url= '$img2'"; 
}


$sql.=" where product_id ='$id'";






$r=mysqli_query($conn,$sql);

if($r){
    echo "<script>alert('Success');</script>";
}else{
    echo "<script>alert('false');</script>";
}
echo "<script>location.href='g_list.php'</script>";
?>
