<?php
    error_reporting(0);
    if($_GET['page'] == 'ta'){ ?>
      <div class="row">
    <div class="col-xs-12">
      <div class="card">
        <div class="card-header">
          Tahun Angkatan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><a href="index.php?form-ta=add" class="btn btn-success btn-xs">Tambah</a></span>
        </div>
        <div class="card-body no-padding">
          <table class="datatable table-responsive table-hover table table-striped primary" cellspacing="0" width="100%">
    <thead>
        <tr>
            <th>No.</th>
            <th>ID. TA</th>
            <th>Tahun Angkatan</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $i = 1;
        $sql = mysqli_query($koneksi, "select * from tbthangkatan order by id_ta asc");
        while($data = mysqli_fetch_array($sql)){        
    ?>
    <tr>
        <td><?php echo $i?></td>
        <td><?php echo $data['id_ta']?></td>
        <td><?php echo $data['tahun_angkatan']?></td>
        <td>
            <a class="btn btn-primary" href="index.php?form-ta=edit&id=<?php echo $data['id_ta']?>">Edit</a>&nbsp;
            <a class="btn btn-danger" onclick="return confirm('Apakah anda yakin?')" href="crud/ta/delete.php?id=<?php echo $data['id_ta']?>">Hapus</a>
        </td>
    </tr>
        <?php $i++; }?>
    </tbody>
</table>
        </div>
      </div>
    </div>
  </div>
    <?php }if($_GET['page'] == 'jurusan'){ ?>
      <div class="row">
    <div class="col-xs-12">
      <div class="card">
        <div class="card-header">
          Jurusan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><a href="index.php?form-jurusan=add" class="btn btn-success btn-xs">Tambah</a></span>
        </div>
        <div class="card-body no-padding">
          <table class="datatable table-responsive table-hover table table-striped primary" cellspacing="0" width="100%">
    <thead>
        <tr>
            <th>No.</th>
            <th>Kode Jurusan</th>
            <th>Nama Jurusan</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $i = 1;
        $sql = mysqli_query($koneksi, "select * from tbjurusan");
        while($data = mysqli_fetch_array($sql)){        
    ?>
    <tr>
        <td><?php echo $i?></td>
        <td><?php echo $data['kd_jur']?></td>
        <td><?php echo $data['jurusan']?></td>
        <td>
            <a class="btn btn-primary" href="index.php?form-jurusan=edit&id=<?php echo $data['kd_jur']?>">Edit</a>&nbsp;
            <a class="btn btn-danger" onclick="return confirm('Apakah anda yakin?')" href="crud/jurusan/delete.php?id=<?php echo $data['kd_jur']?>">Hapus</a>
        </td>
    </tr>
        <?php $i++; }?>
    </tbody>
</table>
        </div>
      </div>
    </div>
  </div>
    <?php }if($_GET['page'] == 'prodi'){ ?>
      <div class="row">
    <div class="col-xs-12">
      <div class="card">
        <div class="card-header">
          Prodi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><a href="index.php?form-prodi=add" class="btn btn-success btn-xs">Tambah</a></span>
        </div>
        <div class="card-body no-padding">
          <table class="datatable table-responsive table-hover table table-striped primary" cellspacing="0" width="100%">
    <thead>
        <tr>
        <th>No.</th>
        <th>Nama Jurusan</th>
        <th>KD. Prodi</th>
        <th>Program Studi</th>
        <th>Aksi</th>
    </tr>
    </thead>
    <tbody>
       <?php
        $i = 1;
        $sql = mysqli_query($koneksi, "select * from tbprodi a, tbjurusan b where a.kd_jur=b.kd_jur");
        while($data = mysqli_fetch_array($sql)){        
    ?>
    <tr>
        <td><?php echo $i?></td>
        <td><?php echo $data['jurusan']?></td>
        <td><?php echo $data['kd_prodi']?></td>
        <td><?php echo $data['prodi']?></td>
        <td>
            <a class="btn btn-primary" href="index.php?form-prodi=edit&id=<?php echo $data['kd_prodi']?>">Edit</a>&nbsp;
            <a class="btn btn-danger" onclick="return confirm('Apakah anda yakin?')" href="crud/prodi/delete.php?id=<?php echo $data['kd_prodi']?>">Hapus</a>
        </td>
    </tr>
        <?php $i++; }?>
    </tbody>
</table>
        </div>
      </div>
    </div>
  </div>
    <?php }if($_GET['page'] == 'user'){ ?>
      <div class="row">
    <div class="col-xs-12">
      <div class="card">
        <div class="card-header">
          Administrator&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><a href="index.php?form-user=add" class="btn btn-success btn-xs">Tambah</a></span>
        </div>
        <div class="card-body no-padding">
          <table class="datatable table-responsive table-hover table table-striped primary" cellspacing="0" width="100%">
    <thead>
        <tr>
            <th>No.</th>
            <th>ID. User</th>
            <th>Nama User</th>
            <th>Password</th>
            <th>Lev. User</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
       <?php
        $i = 1;
        $sql = mysqli_query($koneksi, "select * from tbuser");
        while($data = mysqli_fetch_array($sql)){        
    ?>
    <tr>
        <td><?php echo $i?></td>
        <td><?php echo $data['id_user']?></td>
        <td><?php echo $data['nama_user']?></td>
        <td><?php echo $data['pass']?></td>
        <td><?php echo $data['lev_user']?></td>
        <td>
            <a class="btn btn-primary" href="index.php?form-user=edit&id=<?php echo $data['id_user']?>">Edit</a>&nbsp;
            <a class="btn btn-danger" onclick="return confirm('Apakah anda yakin?')" href="crud/user/delete.php?id=<?php echo $data['id_user']?>">Hapus</a>
        </td>
    </tr>
        <?php $i++; }?>
    </tbody>
</table>
        </div>
      </div>
    </div>
  </div>
    <?php }if($_GET['page'] == 'mahasiswa'){ ?>
      <div class="row">
    <div class="col-xs-12">
      <div class="card">
        <div class="card-header">
            Data Mahasiswa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span><a href="index.php?form-mahasiswa=add" class="btn btn-success btn-xs">Tambah</a></span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span><a href="index.php?laporan=mahasiswa" class="btn btn-warning btn-xs">Laporan</a></span>
        </div>
        <div class="card-body no-padding">
          <table class="datatable table table-hover table-responsive table-striped primary" cellspacing="0" width="100%">
    <thead>
        <tr>
            <th width="5%">No.</th>
            <th>Program Studi</th>
            <th>NIM</th>
            <th>Nama Mahasiswa</th>
            <th>L/P</th>
            <th>Tempat, Tgl Lahir</th>
            <th>Alamat</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
         <?php
        $i = 1;
        $sql = mysqli_query($koneksi, "SELECT * FROM tbmahasiswa a, tbprodi b where a.kd_prodi=b.kd_prodi ORDER BY a.kd_prodi");
        while($data = mysqli_fetch_array($sql)){ ?>
       <tr>
        <td><?php echo ++$no_urut?></td>
        <td><?php echo $data['prodi']?></td>
        <td><?php echo $data['nim']?></td>
        <td><?php echo $data['nama_mhs']?></td>
        <td><?php echo $data['jk']?></td>
        <td><?php echo $data['tmp_lahir'].', '.date('d-M-Y', strtotime($data['tgl_lahir']))?></td>
        <td><?php echo $data['alamat']?></td>
        <td>
            <a class="btn btn-primary" href="index.php?form-mahasiswa=edit&id=<?php echo $data['nim']?>"><i class="fa fa-pencil"></i></a>
            <a class="btn btn-danger" onclick="return confirm('Apakah anda yakin?')" href="crud/mahasiswa/delete.php?id=<?php echo $data['nim']?>"><i class="fa fa-trash"></i></a>
        </td>
    </tr>
    <?php } ?>
    </tbody>
</table>
        </div>
      </div>
    </div>
  </div>
    <?php }
    
    ?>
