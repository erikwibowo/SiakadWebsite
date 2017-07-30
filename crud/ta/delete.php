<?php
    include '../../dbo.php';
    $id=$_GET["id"];
    $query = "delete from tbthangkatan where id_ta='$id'";
    $result = mysqli_query($koneksi, $query);
    if ($result) {
        header("location:../../index.php?page=ta&delete=success");	
    }else {
    	header("location:../../index.php?page=ta&delete=fail");
    }
?>
