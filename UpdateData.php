?php

	include 'conn.php';

	$id = $_POST['id'];
	$username = $_POST['username'];
	$email= $_POST['email'];
	$phone = $_POST['phone'];
	$skill= $_POST['skill'];
    $blood group= $_POST['blood group'];
    $address= $_POST['address'];

	$connect->query("UPDATE tb_uer SET item_id='".$id."', username='".$username."', ='".email."', email='".$phone., ='".$phone., skill='".$skill., blood group='".$address."' WHERE id=". $id);

?>