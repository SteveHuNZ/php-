<?php
include('conn.php');
$id=$_GET['id'];
session_start();

$sql="select * from product where product_id=$id";
$rs=mysqli_query($conn,$sql);

if(mysqli_num_rows($rs)){
      $row=mysqli_fetch_assoc($rs);
}
else{
      echo'no data!';exit;
}
$sql="select * from category ";
$rs=mysqli_query($conn,$sql);
?>
 <!DOCTYPE html>
<html>
<head>	
	<meta charset="utf-8" />
<title>admin-panel</title>	
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
</script>
<script type="text/javascript" charset="utf-8" src="./utf8-php/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="./utf8-php/ueditor.all.min.js"> </script>
        <script type="text/javascript" charset="utf-8" src="./utf8-php/lang/zh-cn/zh-cn.js"></script>
</head> 	
 <div>
      	<div>
      	
      		<form action="g_update_save.php" method="post" enctype="multipart/form-data">
      			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC" >
      				<tr>
                  <tr>
      <td colspan="2" align="left" class="tr">Update</td>
     
      				
             <tr>
                <input type="hidden" name="id" value="<?php echo $row['product_id']?>">
                        <td align="right" bgcolor="#FFFFFF">Category：</td>
                        <td align="left" bgcolor="#FFFFFF">
                            <select name="q" class="layui-input">
                                <?php   while($row2=mysqli_fetch_assoc($rs)){ ?>
                                <option value="<?php echo $row2['category_id'] ?>"><?php echo $row2['category_name'] ?></option>     
                            <?php } ?>
                            </select>
                           
                        </td>       
                    </tr>
                    <tr>
                        <td align="right" bgcolor="#FFFFFF">Product_name：</td>
                        <td align="left" bgcolor="#FFFFFF">
                           <input type="w" name="w" value="<?php echo $row['product_name'] ?>">
                           
                        </td>       
                    </tr>
                     <tr>
                        <td align="right" bgcolor="#FFFFFF">product_description：</td>
                        <td align="left" bgcolor="#FFFFFF">
                           <input type="e" name="e" value="<?php echo $row['product_description'] ?>">
                           
                        </td>       
                    </tr>
                     <tr>
                        <td align="right" bgcolor="#FFFFFF">product_price：</td>
                        <td align="left" bgcolor="#FFFFFF">
                           <input type="r" name="r" value="<?php echo $row['product_price'] ?>">
                           
                        </td>       
                    </tr>
                     <tr>
                        <td align="right" bgcolor="#FFFFFF">product_is_featured：</td>
                        <td align="left" bgcolor="#FFFFFF">
                           <input type="a" name="a" value="<?php echo $row['product_is_featured'] ?>">
                           
                        </td>       
                    </tr>
                     <tr>
                        <td align="right" bgcolor="#FFFFFF">product_rating：</td>
                        <td align="left" bgcolor="#FFFFFF">
                           <input type="s" name="s" value="<?php echo $row['product_rating'] ?>">
                           
                        </td>       
                    </tr>
                   
                    <tr>
                        <td align="right" bgcolor="#FFFFFF">product_thumbnail_url：</td>
                        <td align="left" bgcolor="#FFFFFF">
                  <input type="file" name="file">
                 </td>      
                    </tr>
                    <tr>
                        <td align="right" bgcolor="#FFFFFF">product_image_url：</td>
                        <td align="left" bgcolor="#FFFFFF">
                  <input type="file" name="file2">
                 </td>      
                    </tr>
      				 <tr>
                                     
      				
      				<td width="5%" bgcolor="#FFFFFF" align="right"></td>
					<td align="left" bgcolor="#FFFFFF">	
					<input type="submit" value="Submit" class="layui-btn">
					</td>
				</table>
      			 </form>
      	</div>

           
      </div>