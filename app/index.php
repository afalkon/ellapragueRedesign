<?php

require_once "config.php";

// Starting session
session_start();

// Red Bean ORM including
require ROOT . 'libs/rb-mysql.php';
R::setup('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASS);

// Getting the request url
$uri = $_SERVER['REQUEST_URI'];
$uri = rtrim($uri, "/");
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1);
$uri = explode('?', $uri);

switch ($uri[0]){

    // ::::::::::::::: Main page Route :::::::::::::::
    case '':
        require_once ROOT . "modules/main/main.php";
        break;
    default:
        require_once ROOT . "modules/main/main.php";
        break;
}