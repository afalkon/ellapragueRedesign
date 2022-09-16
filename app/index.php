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
    case 'logout':
        require_once ROOT . "modules/login/logout.php";
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
        // All tours and destinations
    case 'destinations':
        require_once ROOT . "modules/admin/tours/destinations.php";
        break;
    case 'destination-add':
        require_once ROOT . "modules/admin/tours/destination-add.php";
        break;
    case 'destination-edit':
        require_once ROOT . "modules/admin/tours/destination-edit.php";
        break;
    case 'destination-delete':
        require_once ROOT . "modules/admin/tours/destination-delete.php";
        break;
    
    case 'alltours':
        require_once ROOT . "modules/admin/tours/alltours.php";
        break;
    case 'tour-add':
        require_once ROOT . "modules/admin/tours/tour-add.php";
        break;
    case 'tour-edit':
        require_once ROOT . "modules/admin/tours/tour-edit.php";
        break;
    case 'tour-delete':
        require_once ROOT . "modules/admin/tours/tour-delete.php";
        break;
        
    // ::::::::::::::: Reviews page Routes :::::::::::::::
    case 'reviews':
        require_once ROOT . "modules/admin/reviews/reviews-all.php";
        break;
    case 'review-add':
        require_once ROOT . "modules/admin/reviews/review-add.php";
        break;
    case 'review-edit':
        require_once ROOT . "modules/admin/reviews/review-edit.php";
        break;
    case 'review-delete':
        require_once ROOT . "modules/admin/reviews/review-delete.php";
        break;

    // ::::::::::::::: Stats page Routes :::::::::::::::
    case 'stats':
        require_once ROOT . "modules/admin/stats/stats.php";
        break;
    case 'messendger':
        require_once ROOT . "modules/admin/messendgers/messendgers.php";
        break;
    case 'messendger-stats':
        require_once ROOT . "modules/admin/messendgers/messendger-stats.php";
        break;

    // ::::::::::::::: Text Edit page Routes :::::::::::::::
    case 'text-edit':
        require_once ROOT . "modules/admin/text-edit/text-edit.php";
        break;
    case 'mainScreen-edit':
        require_once ROOT . "modules/admin/text-edit/mainScreen-edit.php";
        break;
    case 'tours-edit':
        require_once ROOT . "modules/admin/text-edit/tours-edit.php";
        break;
    case 'individual-route-edit':
        require_once ROOT . "modules/admin/text-edit/individual-route-edit.php";
        break;
    case 'about-edit':
        require_once ROOT . "modules/admin/text-edit/about-edit.php";
        break;
    case 'contacts-edit':
        require_once ROOT . "modules/admin/text-edit/contacts-edit.php";
        break;
    
    default:
        require_once ROOT . "modules/main/main.php";
        break;
}