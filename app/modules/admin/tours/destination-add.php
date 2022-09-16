<?php

if(isset($_SESSION['logged_user']) && $_SESSION['logged_user']['role'] == 'admin'){
$pageTitle = 'Добавление направления';

if (isset($_POST['submit'])){

    
    if (empty($_POST['dest_name'])){
        $_SESSION['errors'][] = ['title' => 'Необходимо ввести назывние направления'];
    }
    if (empty($_POST['dest_heading'])){
        $_SESSION['errosrs'][] = ['title' => 'Необходимо указать отображаемый заголовок'];
    }

    if (empty($_SESSION['errors'])){
        $newDestination = R::dispense('tourscat');

        $newDestination->catName = $_POST['dest_name'];
        $newDestination->catHeading = $_POST['dest_heading'];

        $savingResult = R::store($newDestination);

        if ($savingResult){
            $_SESSION['success'][] = ['title' => 'Новое направление успешно сохранено'];
            header("Location: " . HOST . "destinations");
        } else {
            $_SESSION['errors'][] = ['title' => 'Что-то пошло не так'];
        }
    }
}

// Буферизация вывода
ob_start();
include ROOT . 'templates/admin/tours/destination-add.tpl';
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