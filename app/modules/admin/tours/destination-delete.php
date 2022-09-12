<?php
$pageTitle = 'Удаление сообщения';

$destination = R::findOne('tourscat', 'id = ?', [$_GET['id']]);

if (isset($_GET['action']) && $_GET['action'] == 'delete'){
    
    $deleteResult = R::trash($destination);
    if($deleteResult){
        $_SESSION['success'][] = ['title' => 'Направление успешно удалено'];
        header("Location: " . HOST . "destinations");
    } else {
        $_SESSION['errors'][] = ['title' => 'Произошла ощибка'];
    }
}


// Буферизация вывода всех сообщений
ob_start();
include ROOT . 'templates/admin/tours/destination-delete.tpl';
$content = ob_get_contents();
ob_end_clean();


include ROOT . 'templates/_parts/_head.tpl';

include ROOT . 'templates/_parts/_sidebar.tpl';
echo $content;

include ROOT . 'templates/_parts/_foot.tpl';