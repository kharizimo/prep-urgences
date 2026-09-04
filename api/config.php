<?php
$config=parse_ini_file("config.ini",true);

$launcher=$config['common']['launcher'];
$params=$config[$launcher];

// connexion 
try{
    $db=new PDO("mysql:host={$params['host']};dbname={$params['db']}",$params['user'],$params['pwd']);
    $db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE,PDO::FETCH_ASSOC);

}catch(PDOException $e){
    echo "Erreur de connexion à la base de données : ".$e->getMessage();
    exit;
}


