<?php   
    header("Content-type: application/octet-stream");
	$url="..".$_GET['filename'];
	header('Content-Disposition: attachment; filename="'.basename($url).'"');
    header("Content-Length: ". filesize(basename($url)));
    readfile(basename($url));
	
?>