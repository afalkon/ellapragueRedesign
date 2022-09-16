<?php

if(isset($_SESSION['logged_user']) && $_SESSION['logged_user']['role'] == 'admin'){
$pageTitle = 'Удаление сообщения';

$tourToDelete = R::findOne('alltours', 'id = ?', [$_GET['id']]);

if (isset($_GET['action']) && $_GET['action'] == 'delete'){
    
    $deleteResult = R::trash($tourToDelete);
    if($deleteResult){
        $_SESSION['success'][] = ['title' => 'Экскурсия успешно удалена'];
        header("Location: " . HOST . "alltours");
    } else {
        $_SESSION['errors'][] = ['title' => 'Произошла ощибка'];
    }
}


// Буферизация вывода всех сообщений
ob_start();
include ROOT . 'templates/admin/tours/tour-delete.tpl';
$content = ob_get_contents();
ob_end_clean();


include ROOT . 'templates/_parts/_head.tpl';

include ROOT . 'templates/_parts/_sidebar.tpl';
echo $content;

include ROOT . 'templates/_parts/_foot.tpl';

} else {
    header("Location: " . HOST);
}