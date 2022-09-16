<?php 

if(isset($_SESSION['logged_user']) && $_SESSION['logged_user']['role'] == 'admin'){

if(isset($_GET['action']) && $_GET['action'] == 'logout'){

    session_destroy();
    header("Location: " . HOST);
}

} else {
    header("Location: " . HOST);
}