<?php

if(isset($_SESSION['logged_user']) && $_SESSION['logged_user']['role'] == 'admin'){
    $pageTitle = 'Удаление сообщения';

$message = R::findOne('messagestats', 'id = ?', [$_GET['id']]);

if (isset($_GET['permition'])){
    if(isset($_GET['action']) && isset($_GET['id'])){
        if($_GET['action'] == 'delete'){
            $messageDelete = R::load('messagestats', $_GET['id']);
    
            $deleteResult = R::trash($messageDelete);
            
            if($deleteResult){
                $_SESSION['success'][] = ['title' => 'Сообщение успешно удалено!'];
                header("Location: " . HOST . "messages");
            } else {
                $_SESSION['errors'][] = ['title' => 'Произошла ошибка, попробуйте позже.'];
            }
        } else {
            header("Location: " . HOST . "admin");
        }
    }

    
}


// Буферизация вывода всех сообщений
ob_start();
include ROOT . 'templates/admin/messages/delete-message.tpl';
$content = ob_get_contents();
ob_end_clean();


include ROOT . 'templates/_parts/_head.tpl';

include ROOT . 'templates/_parts/_sidebar.tpl';
echo $content;

include ROOT . 'templates/_parts/_foot.tpl';

} else {
    header("Location: " . HOST);
}
