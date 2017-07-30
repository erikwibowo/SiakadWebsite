<aside class="app-sidebar" id="sidebar">
  <div class="sidebar-header">
    <a class="sidebar-brand" href="#"><span class="highlight">Siakad v4</span> Admin</a>
    <button type="button" class="sidebar-toggle">
      <i class="fa fa-times"></i>
    </button>
  </div>
  <div class="sidebar-menu">
    <ul class="sidebar-nav">
      <li class="active">
        <a href="./index.php">
          <div class="icon">
            <i class="fa fa-home" aria-hidden="true"></i>
          </div>
          <div class="title">Dashboard</div>
        </a>
      </li>
      <li class="dropdown ">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
          <div class="icon">
            <i class="fa fa-cube" aria-hidden="true"></i>
          </div>
          <div class="title">Master</div>
        </a>
        <div class="dropdown-menu">
          <ul>
            <li class="section"><i class="fa fa-file-o" aria-hidden="true"></i> Master</li>
            <li><a href="index.php?page=ta">Tahun Angkatan</a></li>
            <li><a href="index.php?page=jurusan">Jurusan</a></li>
            <li><a href="index.php?page=prodi">Program Studi</a></li>
          </ul>
        </div>
      </li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
          <div class="icon">
            <i class="fa fa-user" aria-hidden="true"></i>
          </div>
          <div class="title">Mahasiswa</div>
        </a>
        <div class="dropdown-menu">
          <ul>
            <li class="section"><i class="fa fa-file-o" aria-hidden="true"></i> Mahasiswa</li>
            <li><a href="index.php?page=mahasiswa">Data Mahasiswa</a></li>
            <li><a href="index.php?page=mahasiswacuti">Data Mahasiswa Cuti</a></li>
            <li><a href="index.php?page=mahasiswado">Data Mahasiswa DO</a></li>
            <li><a href="index.php?page=mahasiswamd">Data Mahasiswa Mengundurkan Diri</a></li>
            <li><a href="index.php?page=mahasiswabeasiswa">Data Mahasiswa Mendapat Beasiswa</a></li>
            <li class="line"></li>
            <li class="section"><i class="fa fa-file-o" aria-hidden="true"></i> Nilai</li>
            <li><a href="index.php?page=nilaimahasiswa">Input Nilai</a></li>
            <li><a href="index.php?laporan=mahasiswa">Laporan Nilai (KHS)</a></li>
            <li class="line"></li>
            <li class="section"><i class="fa fa-file-o" aria-hidden="true"></i> Alumni</li>
            <li><a href="index.php?page=mahasiswaalumni">Data Mahasiswa Alumni</a></li>
            <li><a href="index.php?page=tracerstudy">Data Tracer Study</a></li>
          </ul>
        </div>
      </li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
          <div class="icon">
            <i class="fa fa-user-plus" aria-hidden="true"></i>
          </div>
          <div class="title">Pegawai</div>
        </a>
        <div class="dropdown-menu">
          <ul>
            <li class="section"><i class="fa fa-file-o" aria-hidden="true"></i> Kepegawaian</li>
            <li><a href="index.php?page=pegawai">Data Pegawai</a></li>
            <li><a href="index.php?page=pegawaicuti">Data Pegawai Cuti</a></li>
            <li class="line"></li>
            <li class="section"><i class="fa fa-file-o" aria-hidden="true"></i> Absensi Pegawai</li>
            <li><a href="index.php?page=absensipegawai">Data Absensi Pegawai</a></li>
            <li><a href="index.php?laporan=absensipegawai">Laporan Absensi Pegawai</a></li>
            <li class="line"></li>
            <li class="section"><i class="fa fa-file-o" aria-hidden="true"></i> Penilaian Kinerja</li>
            <li><a href="index.php?page=penilaiankinerja">Data Penilaian kinerjai</a></li>
          </ul>
        </div>
      </li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
          <div class="icon">
            <i class="fa fa-money" aria-hidden="true"></i>
          </div>
          <div class="title">Uang Kuliah</div>
        </a>
        <div class="dropdown-menu">
          <ul>
            <li class="section"><i class="fa fa-file-o" aria-hidden="true"></i> UK Mahasiswa</li>
            <li><a href="index.php?page=uk">Data Master UK</a></li>
            <li><a href="index.php?page=mahasiswauk">Data Mahasiswa UK</a></li>
            <li class="line"></li>
            <li class="section"><i class="fa fa-file-o" aria-hidden="true"></i> Transaksi UK</li>
            <li><a href="index.php?page=transaksiuk">Data Transaksi UK</a></li>
            <li><a href="index.php?laporan=transaksiuk">Laporan Transaksi UK</a></li>
          </ul>
        </div>
      </li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
          <div class="icon">
            <i class="fa fa-calendar" aria-hidden="true"></i>
          </div>
          <div class="title">Akademik</div>
        </a>
        <div class="dropdown-menu">
          <ul>
            <li class="section"><i class="fa fa-file-o" aria-hidden="true"></i> Akademik</li>
            <li><a href="index.php?page=mastertak">Data Master Tahun Akademik</a></li>
            <li><a href="index.php?page=kelompokmk">Data Kelompok Mata Kuliah</a></li>
            <li><a href="index.php?page=mk">Data Mata Kuliah</a></li>
            <li class="line"></li>
            <li class="section"><i class="fa fa-file-o" aria-hidden="true"></i> Jadwal Mata Kuliah</li>
            <li><a href="index.php?page=jadwalmk">Data Jadwal Mata Kuliah</a></li>
            <li><a href="index.php?laporan=jadwalmk">Cetak Jadwal Mata Kuliah</a></li>
          </ul>
        </div>
      </li>
    </ul>
  </div>
</aside>

<script type="text/ng-template" id="sidebar-dropdown.tpl.html">
  <div class="dropdown-background">
    <div class="bg"></div>
  </div>
  <div class="dropdown-container">
    {{list}}
  </div>
</script>