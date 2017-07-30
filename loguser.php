<div class="row">
    <div class="col-xs-12">
      <div class="card">
        <div class="card-header">
          Last User Login
        </div>
        <div class="card-body no-padding">
          <table class="datatable table table-responsive table-hover table-striped" cellspacing="0" width="100%">
    <thead>
        <tr>
            <th>No.</th>
            <th>ID Log</th>
            <th>ID USer</th>
            <th>Nama User</th>
            <th>IP Address</th>
            <th>Device</th>
            <th>Browser</th>
            <th>Time</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $i = 1;
        $sql = mysqli_query($koneksi, "select * from tblogin order by time desc");
        while($data = mysqli_fetch_array($sql)){        
    ?>
    <tr>
        <td><?php echo $i?></td>
        <td><?php echo $data['id_log']?></td>
        <td><?php echo $data['id_user']?></td>
        <td><?php echo $data['username']?></td>
        <td><?php echo $data['ip_address']?></td>
        <td><?php echo $data['device']?></td>
        <td><?php echo $data['browser']?></td>
        <td><?php echo $data['time']?></td>
    </tr>
        <?php $i++; }?>
    </tbody>
</table>
        </div>
      </div>
    </div>
</div>