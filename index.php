<!DOCTYPE html>
	<head>
		<meta charset="utf-8" />
		<title>loginfiles</title>
		<style>
			html,body{
				margin: 0;
				padding: 0;
				background-image: url('./images/bg.jpg');
				 background-size: 100% 200%;
				}
			form{
			height:350px;
			margin:100px auto 0;
			
			text-align: center;
			}
		    form h3{
		    	margin: 0 0 50px 0;
		         height: 24px/50px;
		         font: 50px; 
		         font:24px/50px 微软雅黑;
		         background: #dfe0e7;
		         boder-bottom:1px solid;
		        #26272b;
		        border-radius:8px 8px 0 0;
		        }
		    .input1{
		    	font:16px/32px 微软雅黑;
		    	width:240px;
		    	}
		    .btn1{
		    	font:18px/36px 微软雅黑;
		    	width:120px;border: 0;
		    	background: #30ae3c; 
		    	border-radius: 4px;
		    	color: #fff;
		    	}
				p{
					font:18px/36px 微软雅黑;
				}
				.button {
    background: gray;
    border: none;
    color: white;
    padding: 10px 12px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 2px 2px;
    cursor: pointer;
	border-radius: 4px;
}
		</style>
	</head>
	<body>
		// this is the log in page 

		<form action="checklogin.php" method="post">
		<table width="500" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
			<tr><td><h3>Admin</h3></td></tr>
			 //user name input area
			<td><p>Username&emsp;<input type="text" name="username" class="input1"/></p></td>
			</tr>
			<tr>
				// password input area
			<td><p>Password&emsp; <input type="password" name="password" class="input1"/></p></td>
			</tr>
			
			<tr>
			<td><p><input type="submit" value="Login " class="btn1"/></p></td>
			

			

			
			</tr>
		
	</table>
		</form>
	</body>
</html>
