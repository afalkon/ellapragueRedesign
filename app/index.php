<?php

require_once "config.php";
require_once ROOT . 'libs/functions.php';
require_once ROOT . 'dbget.php';

// Starting session
session_start();

if(isset($_SESSION['logged_user'])){
    if($_SESSION['logged_user']['role'] === 'admin'){
        // Getting all unread messages
    $unreadMessagesNum = R::count('messagestats', 'unread = ?', [1]);
    }
    
}

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
    
    // ::::::::::::::: Login page Routes :::::::::::::::
    case 'login':
        require_once ROOT . "modules/login/login.php";
        break;
    case 'password-recovery':
        require_once ROOT . "modules/login/password-recovery.php";
        break;
    case 'new-password':
        require_once ROOT . "modules/login/new-password.php";
        break;
    case 'lost-password':
        require_once ROOT . "modules/login/lost-password.php";
        break;
    
    // ::::::::::::::: Admin page Routes :::::::::::::::
    case 'admin':
        require_once ROOT . "modules/admin/admin.php";
        break;
        // Admin Messages
    case 'messages':
        require_once ROOT . "modules/admin/messages/messages.php";
        break;
    case 'delete-message':
        require_once ROOT . "modules/admin/messages/message-delete.php";
        break;
        
    
    default:
        require_once ROOT . "modules/main/main.php";
        break;
}