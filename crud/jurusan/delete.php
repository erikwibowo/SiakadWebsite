<?php
    include '../../dbo.php';
    $id=$_GET["id"];
    $query = "delete from tbjurusan where kd_jur='$id'";
    $result = mysqli_query($koneksi, $query) or die("Query failed with error: ".mysqli_error($query));
    if ($result) {
        header("location:../../index.php?page=jurusan&delete=success");	
    }else {
    	header("location:../../index.php?page=jurusan&delete=fail");	
    }
?>

