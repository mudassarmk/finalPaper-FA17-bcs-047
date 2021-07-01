include 'conn.php';

	$id= $_POST['$id'];
	$username = $_POST['$username'];
	$Email = $_POST['$Email'];
	$phone= $_POST['sphone'];
    $skill= $_POST['$skill'];
    $bloodgroup= $_POST['blod group'];
    $address= $_POST['$address'];


	$connect->query("INSERT INTO tb_item (id,username,Email,phone,skill,blood group,address) VALUES ('".$id."','".$username."','".$email."','".$phone."'$skill."'$blood group."'$address."')")