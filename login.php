<?php
    include 'notif.php';
?>
<!DOCTYPE html>
<html>
<head>
  <title>.: Siakad V4 :.</title>
  
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" type="text/css" href="assets/css/vendor.css">
  <link rel="stylesheet" type="text/css" href="assets/css/flat-admin.css">

  <!-- Theme -->
  <link rel="stylesheet" type="text/css" href="assets/css/theme/blue-sky.css">
  <link rel="stylesheet" type="text/css" href="assets/css/theme/blue.css">
  <link rel="stylesheet" type="text/css" href="assets/css/theme/red.css">
  <link rel="stylesheet" type="text/css" href="assets/css/theme/yellow.css">
</head>
<body>
  <div class="app app-default">

<div class="app-container app-login">
  <div class="flex-center">
    <div class="app-header"></div>
    <div class="app-body">
      <div class="app-block">
      <div class="app-form">
        <div class="form-header">
          <div class="app-brand">
              <span class="highlight">.: Siakad</span> V4 :.<br>
          </div>
        </div>
          <form name="frlogin" method="POST" action="login-proses.php" onsubmit="simpanlogin()">
              <?php echo $notif; ?>
            <div class="input-group">
              <span class="input-group-addon" id="basic-addon1">
                <i class="fa fa-user" aria-hidden="true"></i></span>
                <input type="text" name="username" class="form-control" placeholder="Username" required autofocus>
            </div>
            <div class="input-group">
              <span class="input-group-addon" id="basic-addon2">
                <i class="fa fa-key" aria-hidden="true"></i></span>
                <input type="password" name="pass" class="form-control" placeholder="Password" required>
            </div>
            <div class="text-center">
                <input type="submit" name="btlogin" class="btn btn-success btn-submit" value="Login">
            </div>
        </form>
      </div>
      </div>
    </div>
  </div>
</div>
  </div>
</body>
</html>