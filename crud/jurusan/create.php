<?php 
    include("../../dbo.php"); 

    $kd_jur = $_POST['kd_jur'];
    $jurusan = $_POST['jurusan'];
    $sql = mysqli_query($koneksi, "insert INTO tbjurusan VALUES ('$kd_jur', '$jurusan')" ) 
            or die("Query failed with error: ".mysqli_error($sql));
    if ($sql) {
            header("location:../../index.php?page=jurusan&insert=success");	
    }else {
    	header("location:../../index.php?page=jurusan&insert=fail");
    }
?>

