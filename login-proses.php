<?php
    include('dbo.php');
    function simpanlogin(){
        $ip = "";
        $id_user = $_POST['id_user'];
        $client = @$_SERVER['HTTP_CLIENT_IP'];
        $forward = @$_SERVER['HTTP_X_FORWARDED_FOR'];
        $remote = @$_SERVER['REMOTE_ADDR'];
        if (filter_var($client, FILTER_VALIDATE_IP)){
            $ip = $client;
        }elseif (filter_var($forward, FILTER_VALIDATE_IP)){
            $ip = $forward;
        }else{
            $ip = $remote;
        }
        $hostname = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $browser = $_SERVER['HTTP_USER_AGENT'];
        
        
        $sql = mysqli_query($koneksi, "insert INTO tblogin VALUES ('$id_user', '$ip', '$hostname', '$browser')" );
    }
    
    
    $username = $_POST['username'];
    $pass= md5($_POST['pass']);
    $execute = mysqli_query($koneksi, "select * from tbuser where nama_user='$username' and pass='$pass'");
    $result = mysqli_num_rows($execute);
    $data = mysqli_fetch_array($execute);
    if ($result==0){
        header("location:login.php?user=wrong");
    }else{
        session_start(); //memulai session
        
        $_SESSION['adminid'] = $data['id_user'];
        $_SESSION['adminname'] = $data['nama_user'];
        $_SESSION['adminlevel'] = $data['lev_user'];
        simpanlogin();
        header("location:index.php?");
    }
?>

