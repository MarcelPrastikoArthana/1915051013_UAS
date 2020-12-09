<?php

$error = $_SERVER["REDIRECT_STATUS"];

$error_title = '';
$error_msg = '';

if($error == 404 ){

	$error_title = '404 Not Found';
	$error_msg = 'Mohon Maaf Halaman Yang Di klik Tidak Tersedia Silahkan hubungi Instagram @mprastikoa untuk informasi lebih lanjut';
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Halaman Tidak Tersedia</title>
</head>
	<body style="background: url(/Bckg.jpg);background-size:cover;background-attachment: fixed;">
		<center><h1><?php echo $error_title ?></h1></center>
		<center><h3><?php echo $error_msg?>  </h3><center>
		<img src="/think.png "width="500" height="450" alt="Bckg"/>
		<b><marquee bgcolor="Grey" width="700">Copyright Marcel Prastiko Arthana 2020</marquee></b>
	</body>
</html>