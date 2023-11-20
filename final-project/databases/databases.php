<?php
  $dns = '';
  $dns .= 'mysql:host='.$db_host.';';
  $dns .= 'port='.$db_port.';';
  $dns .= 'dbname='.$db_name.';';

  $pdo = new pdo(
    $dns, 
    $db_user, 
    $db_pwd
  ); //Se crea una nueva conexíon a la base de datos
?>