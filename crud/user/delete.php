<?php
    include '../../dbo.php';
    $id=$_GET["id"];
    $query = "delete from tbuser where id_user='$id'";
    $result = mysqli_query($koneksi, $query) or die("Query failed with error: ".mysqli_error($query));
    if ($result) {
        header("location:../../index.php?page=user&delete=success");	
    }else {
    	header("location:../../index.php?page=user&delete=fail");
    }
?>
