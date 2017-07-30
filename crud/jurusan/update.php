<?php 
    include("../../dbo.php"); 

    $kd_jur = $_POST['kd_jur'];
    $jurusan = $_POST['jurusan'];
    $sql = mysqli_query($koneksi, "update tbjurusan set jurusan='$jurusan' where kd_jur='$kd_jur' " ) 
            or die("Query failed with error: ".mysqli_error($sql));
    if ($sql) {
            header("location:../../index.php?page=jurusan&update=success");	
    }else {
    	header("location:../../index.php?page=jurusan&update=fail");
    }
?>

