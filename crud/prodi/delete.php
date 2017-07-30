<?php
    include '../../dbo.php';
    $id=$_GET["id"];
    $query = "delete from tbprodi where kd_prodi='$id'";
    $result = mysqli_query($koneksi, $query);
    if ($result) {
        header("location:../../index.php?page=prodi&delete=success");	
    }else {
    	header("location:../../index.php?page=prodi&delete=fail");
    }
?>

