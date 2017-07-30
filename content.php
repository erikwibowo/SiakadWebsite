<?php 
        error_reporting(0);
        
        if($_GET["page"] == "user"){
            include("tabel.php");
        }else if($_GET["form-user"] == "add"){
            include("form.php");
        }else if($_GET["form-user"] == "edit"){
            include("form.php");
        }else if($_GET["page"] == "jurusan"){
            include("tabel.php");
        }else if($_GET["form-jurusan"] == "add"){
            include("form.php");
        }else if($_GET["form-jurusan"] == "edit"){
            include("form.php");
        }else if($_GET["page"] == "prodi"){
            include("tabel.php");
        }else if($_GET["form-prodi"] == "add"){
            include("form.php");
        }else if($_GET["form-prodi"] == "edit"){
            include("form.php");
        }else if($_GET["page"] == "ta"){
            include("tabel.php");
        }else if($_GET["form-ta"] == "add"){
            include("form.php");
        }else if($_GET["form-ta"] == "edit"){
            include("form.php");
        }else if($_GET["page"] == "mahasiswa"){
            include("tabel.php");
        }else if($_GET["form-mahasiswa"] == "add"){
            include("form.php");
        }else if($_GET["form-mahasiswa"] == "edit"){
            include("form.php");
        }else if($_GET["laporan"] == "mahasiswa"){
            include("laporan.php");
        }else if($_GET[""] ==""){
            include("content-menu.php");
        }
    ?>

