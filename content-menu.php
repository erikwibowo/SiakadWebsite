<div class="row">
  <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
      <a class="card card-banner card-green-light">
        <div class="card-body">
          <i class="icon fa fa-user-plus fa-4x"></i>
          <div class="content">
            <div class="title">Data Mahasiswa</div>
            <?php
            $sql = mysqli_query($koneksi, "select * from tbmahasiswa");
            $row = mysqli_num_rows($sql);
            ?>
            <div class="value"><?php echo $row; ?></div>
          </div>
        </div>
      </a>
  </div>
</div>

<?php include 'loguser.php'; ?>