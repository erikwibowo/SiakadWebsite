<?php 
    include("../../dbo.php"); 

    $ta = $_POST['ta'];
    $id = $_POST['id'];
    $sql = mysqli_query($koneksi, "insert INTO tbthangkatan VALUES ('$id', '$ta')" );
    if ($sql) {
            header("location:../../index.php?page=ta&insert=success");	
    }else {
    	header("location:../../index.php?page=ta&insert=fail");
    }
?>

