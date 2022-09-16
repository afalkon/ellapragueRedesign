<?php

if(isset($_SESSION['logged_user']) && $_SESSION['logged_user']['role'] == 'admin'){
$pageTitle = 'Переходы в мессенджеры';

$messendgers = R::getAll('SELECT * FROM messendgers ORDER BY id DESC');

if(isset($_GET['id']) && $_GET['action'] == 'delete'){
    $messendgerToDelete = R::findOne('messendgers', 'id = ?', [$_GET['id']]);

    $deleteResult = R::trash($messendgerToDelete);
    if($deleteResult){
        $_SESSION['success'][] = ['title' => 'Запись о переходе в мессенджер успешно удалена'];
        header("Location: " . HOST . "messendger-stats");
    } else {
        $_SESSION['errors'][] = ['title' => 'Что-то пошло не так'];
    }
}


ob_start();
include ROOT . 'templates/admin/messendgers/messendger-stats.tpl';
$content = ob_get_contents();
ob_end_clean();




include ROOT . 'templates/_parts/_head.tpl';

include ROOT . 'templates/_parts/_sidebar.tpl';
echo $content;

include ROOT . 'templates/_parts/_foot.tpl';

$_SESSION['errors'] = array();
$_SESSION['success'] = array();

} else {
    header("Location: " . HOST);
}