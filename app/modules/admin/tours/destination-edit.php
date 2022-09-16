<?php

if(isset($_SESSION['logged_user']) && $_SESSION['logged_user']['role'] == 'admin'){
$pageTitle = 'Редактировать направление';

$destination = R::load('tourscat', $_GET['id']);

if ($_GET['edit'] == 'true'){
    if(isset($_POST['submit'])){

        if(empty($_POST['dest_name'])){
            $_SESSION['errors'][] = ['title' => 'Необходимо заполнить название направления'];
        }
        if(empty($_POST['dest_heading'])){
            $_SESSION['errors'][] = ['title' => 'Необходимо заполнить заголовок направления'];
        }

        if(empty($_SESSION['errors'])){
            $destination->cat_name = $_POST['dest_name'];
            $destination->cat_heading = $_POST['dest_heading'];

            $updateResult = R::store($destination);

            if($updateResult){
                $_SESSION['success'][] = ['title' => 'Обновления успешно сохранены'];
                header("Location: " . HOST . "destinations");
            } else {
                $_SESSION['errors'][] = ['title' => 'Произошла ошибка'];
            }
        }
    }
} else {
    header("Location: " . HOST . "destinations");
}



ob_start();
include ROOT . 'templates/admin/tours/destination-edit.tpl';
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