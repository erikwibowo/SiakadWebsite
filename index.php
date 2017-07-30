<?php 
include 'dbo.php';
include 'notif.php';
session_start();
if(empty($_SESSION['adminid'])){
    header('location:login.php?login=no');
}
?>
<!DOCTYPE html>
<html>
<head>
  <title>.: Siakad V4 :.</title>
  
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" type="text/css" href="./assets/css/vendor.css">
  <link rel="stylesheet" type="text/css" href="./assets/css/flat-admin.css">

  <!-- Theme -->
  <link rel="stylesheet" type="text/css" href="./assets/css/theme/blue-sky.css">
  <link rel="stylesheet" type="text/css" href="./assets/css/theme/blue.css">
  <link rel="stylesheet" type="text/css" href="./assets/css/theme/red.css">
  <link rel="stylesheet" type="text/css" href="./assets/css/theme/yellow.css">

</head>
<body>
  <div class="app app-default">

    <?php include 'leftmenu.php'; ?>
    <div class="app-container">

        <?php include 'header.php'; ?>
        <div class="row">  
            <div class="col-md-12">
                <?php echo $notif ?>
            </div>
        </div>
        <?php include 'content.php'; ?>

        <?php include 'footer.php'; ?>
        
    </div>
  </div>
  
  <script type="text/javascript" src="./assets/js/vendor.js"></script>
  <script type="text/javascript" src="./assets/js/app.js"></script>

</body>
</html>