<?php 
    include("../../dbo.php"); 

    $kd_prodi = $_POST['kd_prodi'];
    $prodi = $_POST['prodi'];
    $kd_jur = $_POST['kd_jur'];
    $sql = mysqli_query($koneksi, "update tbprodi set prodi='$prodi', kd_jur='$kd_jur' where kd_prodi='$kd_prodi' " );
    if ($sql) {
            header("location:../../index.php?page=prodi&update=success");	
    }else {
    	header("location:../../index.php?page=prodi&update=fail");
    }
?>

