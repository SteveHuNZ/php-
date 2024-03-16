
<?php
include('conn.php');
session_start();
mysqli_query($conn,"set names utf8");//set database formateutf8
if (!$conn) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}
/* check if can generate MySQLi_STMT class */
$stmt = mysqli_prepare($conn, "insert into product (category_id,product_name,product_description,product_price,product_is_featured,product_rating,product_thumbnail_url,product_image_url) VALUES (?, ?, ?,?, ?, ?,?, ?)");
if ( !$stmt ) {
    die('mysqli error: '.mysqli_error($conn));
}
/* get POST data */
$q=$_POST['q'];
$w=$_POST['w'];
$e=$_POST['e'];
$r=$_POST['r'];
$a=$_POST['a'];
$s=$_POST['s'];


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
            echo $_FILES["file"]["name"] . " files already exist。 ";
        }
        else
        {
            $fname=time();
        	$img=$fname.'.'.$extension;
            // if upload files not in this category ,so  upload cateloge
            move_uploaded_file($_FILES["file"]["tmp_name"], "./catalog/product/thumbnail/" . $img);
        }
    }
$img='./catalog/product/thumbnail/'.$img;
	
}else{
   $img='catalog/product/thumbnail/missing.jpg';
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
            echo $_FILES["file2"]["name"] . " files alrady exist。 ";
        }
        else
        {
            $fname=time();
            $img2=$fname.'.'.$extension;
            // if upload files not in this category ,so  upload cateloge
            move_uploaded_file($_FILES["file2"]["tmp_name"], "./catalog/product/image/" . $img2);
        }
    }
$img2='./catalog/product/image/'.$img2;
    
}else{
   $img2='catalog/product/image/missing.jpg';
}

/* set parameter */
mysqli_stmt_bind_param($stmt, 'ssssssss', $q, $w,$e,$r, $a,$s,$img,$img2);
/* opetare prepare */
mysqli_stmt_execute($stmt);
/* depending on the results ,go to differert pages  */
if(mysqli_stmt_affected_rows($stmt)){
    echo "<script>alert('success');</script>";
}else{
    echo "<script>alert('false');</script>";
}
echo "<script>location.href='g_list.php'</script>";
?>