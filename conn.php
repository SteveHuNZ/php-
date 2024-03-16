

<?php
//this  a database connection file to connect the server-side to the database.

header('content-type:text/html;charset=utf-8');

// set local host , username, password ,and the  database name

$conn=mysqli_connect('localhost','admin','123456','store_<5056680>') or die('the connection to dadabase failed ！');
mysqli_query($conn,'set names utf8');

