<?php 
    include("../../dbo.php"); 

    $kd_prodi = $_POST['kd_prodi'];
    $id_ta = $_POST['id_ta'];
    $nim = $_POST['nim'];
    $nama_mhs = $_POST['nama_mhs'];
    $jk = $_POST['jk'];
    $tmp_lahir = $_POST['tmp_lahir'];
    $tgl = $_POST['tgl'];
    $bln = $_POST['bln'];
    $tahun = $_POST['tahun'];
    $agama = $_POST['agama'];
    $nama_ayah = $_POST['nama_ayah'];
    $nama_ibu = $_POST['nama_ibu'];
    $alamat = $_POST['alamat'];
    $no_telepon = $_POST['no_telepon'];
    
    $sql = mysqli_query($koneksi, "update tbmahasiswa set nim='$nim', kd_prodi='$kd_prodi', nama_mhs = '$nama_mhs', jk='$jk',tmp_lahir='$tmp_lahir', tgl_lahir = '$tahun-$bln-$tgl', agama = '$agama', nama_ayah = '$nama_ayah', nama_ibu = '$nama_ibu', alamat = '$alamat', no_telepon = '$no_telepon' where nim='$nim' " ) 
            or die("Query failed with error: ".mysqli_error($sql));
    if ($sql) {
            header("location:../../index.php?page=mahasiswa&update=success");	
    }else {
        header("location:../../index.php?page=mahasiswa&update=fail");
    }
?>

