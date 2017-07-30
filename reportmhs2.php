<?php

	include_once('library/phpjasperxml/class/tcpdf/tcpdf.php');
	include_once("library/phpjasperxml/class/PHPJasperXML.inc.php");
	$server_db="localhost";
	$user_db="root";
        $pass_db="";
	$nama_db="dbsiakad_161530009";
	$kd_prodi = $_POST["kd_prodi"];
	$id_ta = $_POST["id_ta"];
	
	$PHPJasperXML = new PHPJasperXML();
	//$PHPJasperXML->debugsql=true;
	$PHPJasperXML->arrayParameter=array("parKdProdi"=>$kd_prodi,
		"parIdTa"=>$id_ta);
	$PHPJasperXML->load_xml_file("report/rpMahasiswa2.jrxml");
	
	$PHPJasperXML->transferDBtoArray($server_db, $user_db, $pass_db,$nama_db);
	$PHPJasperXML->outpage("I");
	//page output method I:standard output D:Download file

?>
