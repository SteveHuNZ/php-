
<?php
include('conn.php');
$sql="select * from category ";
$rs=mysqli_query($conn,$sql);

?>
 <!DOCTYPE html>
<html>
<head>	
       
     <script type="text/javascript" charset="utf-8" src="./utf8-php/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="./utf8-php/ueditor.all.min.js"> </script>
        <script type="text/javascript" charset="utf-8" src="./utf8-php/lang/zh-cn/zh-cn.js"></script>
	<meta charset="utf-8" />
<title>admin</title>	
<style>
.tr {
	font-family: "微软雅黑,Verdana, 新宋体";
	color:black;/*标题字体色*/
	font-size:21px;
	font-weight:bolder;
	background:#a8c7ce;/*标题背景色*/
</style>
</head> 	
 <div>
      	<div>
      		
      		<form action="g_new_save.php" method="post"  enctype="multipart/form-data">
      			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC" >
      				<tr>
			<td colspan="2" align="left" class="tr">New</td>
			</tr>
					<tr>
      					<td align="right" bgcolor="#FFFFFF">Category：</td>
      					<td align="left" bgcolor="#FFFFFF">
                            <select name="q" class="layui-input">
                                <?php   while($row=mysqli_fetch_assoc($rs)){ ?>
                                <option value="<?php echo $row['category_id'] ?>"><?php echo $row['category_name'] ?></option>     
                            <?php } ?>
                            </select>
                           
                        </td>		
      				</tr>
                    <tr>
                        <td align="right" bgcolor="#FFFFFF">Product_name：</td>
                        <td align="left" bgcolor="#FFFFFF">
                           <input type="w" name="w">
                           
                        </td>       
                    </tr>
                     <tr>
                        <td align="right" bgcolor="#FFFFFF">product_description：</td>
                        <td align="left" bgcolor="#FFFFFF">
                           <input type="e" name="e">
                           
                        </td>       
                    </tr>
                     <tr>
                        <td align="right" bgcolor="#FFFFFF">product_price：</td>
                        <td align="left" bgcolor="#FFFFFF">
                           <input type="r" name="r">
                           
                        </td>       
                    </tr>
                     <tr>
                        <td align="right" bgcolor="#FFFFFF">product_is_featured：</td>
                        <td align="left" bgcolor="#FFFFFF">
                           <input type="a" name="a">
                           
                        </td>       
                    </tr>
                     <tr>
                        <td align="right" bgcolor="#FFFFFF">product_rating：</td>
                        <td align="left" bgcolor="#FFFFFF">
                           <input type="s" name="s">
                           
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
      					
                              </tr>
                                   
      				
      				<td width="5%" align="right"></td>
					<td align="left">	
					<input type="submit" class="layui-btn" value="Submit"/>
					</td>
				</table>
      			 </form>
      	</div>
      </div>