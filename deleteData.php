<?php
	include 'conn.php';
	$id=$_POST['id'];
	$connect->query("DELETE FROM tb_user WHERE id=".$id);


?>
