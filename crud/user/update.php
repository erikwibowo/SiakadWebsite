<?php 
    include("../../dbo.php"); 

    $id_user = $_POST['id_user'];
    $nama_user = $_POST['nama_user'];
    $pass = md5($_POST['pass']);
    $lev_user = $_POST['lev_user'];
    $sql = mysqli_query($koneksi, "update tbuser set nama_user='$nama_user', pass='$pass', lev_user='$lev_user' where id_user='$id_user' " );
    if ($sql) {
            header("location:../../index.php?page=user&update=success");	
    }else {
        header("location:../../index.php?page=user&update=fail");
    }
?>