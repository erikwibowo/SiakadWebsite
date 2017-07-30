<?php 
    include("../../dbo.php"); 

    $ta = $_POST['tahun_angkatan'];
    $id = $_POST['id_ta'];
    $sql = mysqli_query($koneksi, "update tbthangkatan set tahun_angkatan='$ta' where id_ta='$id' " );
    if ($sql) {
            header("location:../../index.php?page=ta&update=success");	
    }else {
    	header("location:../../index.php?page=ta&update=fail");
    }
?>

