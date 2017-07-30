<?php
    $notif = '';
    if(@$_GET['insert'] == 'success'){
        $notif = "<div class='alert alert-success'>
			<button class='close' data-close='alert'></button>
			<span>
			Data successfully added! </span>
		</div>";
    }elseif (@$_GET['insert'] == 'fail') {
        $notif = "<div class='alert alert-danger'>
			<button class='close' data-close='alert'></button>
			<span>
			Data failed to add!. </span>
		</div>";
    }elseif(@$_GET['delete'] == 'success'){
        $notif = "<div class='alert alert-danger'>
			<button class='close' data-close='alert'></button>
			<span>
			Data succesfully deleted! </span>
		</div>";
    }elseif (@$_GET['delete'] == 'fail') {
        $notif = "<div class='alert alert-danger'>
			<button class='close' data-close='alert'></button>
			<span>
			Delete failed! </span>
		</div>";
    }elseif(@$_GET['update'] == 'success'){
        $notif = "<div class='alert alert-success'>
			<button class='close' data-close='alert'></button>
			<span>
			Data succesfully updated! </span>
		</div>";
    }elseif (@$_GET['update'] == 'fail') {
        $notif = "<div class='alert alert-danger'>
			<button class='close' data-close='alert'></button>
			<span>
			Update data failed! </span>
		</div>";
    }elseif(@$_GET['login'] == 'no'){
        $notif = "<p class='alert alert-danger'>Anda harus login terlebih dahulu!</p>";
    }elseif(@$_GET['user'] == 'wrong'){
        $notif = "<p class='alert alert-danger'>Username / Password yang anda masukkan salah!</p>";
    }
?>