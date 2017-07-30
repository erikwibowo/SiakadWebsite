<?php
    
//file proses cetak laporan
	include_once('library/phpjasperxml/class/tcpdf/tcpdf.php');
	include_once("library/phpjasperxml/class/PHPJasperXML.inc.php");
	$server_db="localhost";
	$user_db="root";
	$pass_db="";
	$nama_db="dbsiakad_161530009";
	
	$PHPJasperXML = new PHPJasperXML();
	
	$PHPJasperXML->load_xml_file("report/rpMahasiswa1.jrxml");
	
	$PHPJasperXML->transferDBtoArray($server_db, $user_db, $pass_db,$nama_db);
	$PHPJasperXML->outpage("I");
	//page output method I:standard output D:Download file



?>

