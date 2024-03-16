<?php
include('conn.php');
session_start();
?>
// use the ui framework of bootstrape 
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<nav>
    <div>
    <div>
        <h2>Product List</h2>
        <a href="g_new.php">new</a>
    </div>
    <div>
        <ul class="nav navbar-nav">
         
           
<div>
	<div>
		// this table will set id category productname price and image 
		<table class="table table-bordered" style="width: 100%">
			<thead>
			<tr>
			
			</tr>
				<tr>
					<th align="center" bgcolor="#FFFFFF" height="27">ID</th>
					<th align="center" bgcolor="#FFFFFF">category</th>
					<th align="center" bgcolor="#FFFFFF">product_name</th>
					<th align="center" bgcolor="#FFFFFF">product_description</th>
					<th align="center" bgcolor="#FFFFFF">product_price</th>
					<th align="center" bgcolor="#FFFFFF">product_is_featured</th>
					<th align="center" bgcolor="#FFFFFF">product_rating</th>
					<th align="center" bgcolor="#FFFFFF">product_thumbnail_url</th>
					<th align="center" bgcolor="#FFFFFF">product_image_url</th>
					<th align="center" bgcolor="#FFFFFF">Option</th>
				
				</tr>
			</thead>
		<tbody>
			<?php
				$p=isset($_GET['p'])?$_GET['p']:1;
				
				//select picture
			   
				$sql="select * from product left join category c on c.category_id = product.category_id order by product.product_id ";
			
				$rs=mysqli_query($conn,$sql);
				$tiao=mysqli_num_rows($rs);
				$ye=ceil($tiao/10);
				$n=($p-1)*10;
			    $sql2="select * from product left join category c on c.category_id = product.category_id order by product.product_id  limit $n,10";
				$rs2=mysqli_query($conn,$sql2);
				$rs=mysqli_query($conn,$sql);

				//product information 

				while($row=mysqli_fetch_assoc($rs2)){
					echo '<tr>';
					echo '<td align="center" bgcolor="#FFFFFF">'.$row['product_id'].'</td>';
					echo '<td align="center" bgcolor="#FFFFFF">'.$row['category_name'].'</td>';
					echo '<td align="center" bgcolor="#FFFFFF">'.$row['product_name'].'</td>';
					echo '<td align="center" bgcolor="#FFFFFF" ><p style="width:100px;height:50px;overflow:hidden;">'.$row['product_description'].'</p></td>';
					echo '<td align="center" bgcolor="#FFFFFF">'.$row['product_price'].'</td>';
					echo '<td align="center" bgcolor="#FFFFFF">'.$row['product_is_featured'].'</td>';
					echo '<td align="center" bgcolor="#FFFFFF">'.$row['product_rating'].'</td>';
					echo '<td align="center" bgcolor="#FFFFFF"><img style="width:100px" src="'.$row['product_thumbnail_url'].'"></td>';
					echo '<td align="center" bgcolor="#FFFFFF"><img style="width:100px" src="'.$row['product_image_url'].'"></td>';
					
					
				//delet products
				
					echo '<td align="center" bgcolor="#FFFFFF">';
					echo '<a href="g_update.php?id='.$row['product_id'].'">Edit</a> /';
					echo '<a href="g_delete.php?id='.$row['product_id'].'" onclick="return
					confirm(\'are you really want to delete data？\')">Delete</a>';
					echo '</td>';


					echo '</tr>';
				}
				?>
		<tbody>
		</table>
		<div class="layui-card-body ">
                            <div class="page">
                                <div>
<?php for($i=1;$i<=$ye;$i++):?>
	<?php if($p==$i){?>
		 <span class="current"><?php echo $i?></span>
	<?php }else{?>
                                
                                  <a class="num " href="<?php if(empty($id)){?>
				g_list.php?p=<?php echo $i?>
			<?php }else{?>
				g_list.php?id=<?php echo $id?>&p=<?php echo $i?>
			<?php }?>"><?php echo $i?></a>
		<?php }?>
                                 <?php endfor?>
                                </div>
                            </div>
                        </div>
			
			</div>
			</div>