<?php
//Database connection
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$db = 'db_marcel';
$conn = mysqli_connect($dbhost, $dbuser, $dbpass , $db) or die($conn);	

//insert into database
if(!empty($_POST)) {
	$un = $_POST['username'];
	$pw = $_POST['pw'];	
	mysqli_query($conn, "insert into tb_login (id_login, username, password, level, foto) values ('',
		'$un', '$pw', 'admin','marcel.jpg')");	

	echo "Success!";

}
?>

