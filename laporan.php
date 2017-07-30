<?php include("dbo.php");
if(@$_GET["laporan"] == "mahasiswa"){
?>

<div class="row">
    <div class="col-md-12">
    <div class="card">
        <div class="card-header">Laporan Mahasiswa Semua Angkatan</div>
        <div class="card-body">
    <form class="form form-horizontal" name="frlaporan1" method="POST" action="reportmhs1.php" target="_blank">
  <div class="section">
    <div class="form-footer">
      <div class="form-group">
        <label class="col-md-2 control-label">Cetak Laporan</label>
        <div class="col-md-2">
            <input type="submit" class="btn btn-primary" value="Cetak">
            </div>
        </div>
        </form>
            </div>
      </div>
        </div>
        </div>
        </div>

    <div class="col-md-12">
    <div class="card">
        <div class="card-header">Laporan Mahasiswa Per TA. Per Prodi</div>
        <div class="card-body">
    <form class="form form-horizontal" name="frlaporan1" method="POST" action="reportmhs2.php" target="_blank">
  <div class="section">
    <div class="section-body">
      <div class="form-group">
        <label class="col-md-2 control-label">Program Studi</label>
        <div class="col-md-4">
            <div class="input-group">
                <select class="select2" name="kd_prodi">
                    <option value="">-- Pilih Prodi --</option>
                    <?php
			$sql = mysqli_query($koneksi, "select * from tbprodi");
				while($data = mysqli_fetch_array($sql)){
		?>
                    <option value="<?php echo $data['kd_prodi']?>" />
			<?php echo $data['kd_prodi'].'-'.$data['prodi']?>
		<?php }?>
                </select>
            </div>
        </div>
      </div>
    <div class="form-group">
        <label class="col-md-2 control-label">Tahun Angkatan</label>
        <div class="col-md-4">
            <div class="input-group">
                <select class="select2" name="id_ta">
                    <option value="">-- Pilih Tahun Angkatan --</option>
                    <?php
			$sql = mysqli_query($koneksi, "select * from tbthangkatan");
			while($data = mysqli_fetch_array($sql)){
		?>
		<option value="<?php echo $data['id_ta']?>" />
			<?php echo $data['tahun_angkatan']?>
		<?php }?>
                </select>
            </div>
        </div>
    </div>
    </div>
      <div class="form-footer">
          <div class="form-group">
              <div class="col-md-9 col-md-offset-2">
                  <input type="submit" class="btn btn-primary" value="Cetak">
            </div>
        </div>
        </form>
            </div>
      </div>
        </div>
        </div>
        </div>
    </div>
      
<?php } ?>