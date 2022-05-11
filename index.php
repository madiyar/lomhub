<?php

define('MAD', 1);

session_start();
require_once($_SERVER['DOCUMENT_ROOT'].'/sys/start.php');

$run = new Start();
$run->run();

?>