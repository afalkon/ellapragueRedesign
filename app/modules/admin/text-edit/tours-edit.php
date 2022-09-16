<?php

if(isset($_SESSION['logged_user']) && $_SESSION['logged_user']['role'] == 'admin'){
$pageTitle = 'Редактирование текстов секции экскурсии';

$tourScreen = R::find('texts', 'section LIKE ?', ['tours']);

foreach($tourScreen as $position){
    $tourScreenBlock[$position['position']] = $position['value'];
}

if(isset($_POST['submit'])){

    if(empty($_POST['main_heading'])){
        $_SESSION['errors'][] = ['title' => 'Заголовок секции не может быть пустым'];
    }
    if(empty($_POST['heading_desc'])){
        $_SESSION['errors'][] = ['title' => 'Подзаголовок секции не может быть пустым'];
    }
    if(empty($_POST['heading_secondary'])){
        $_SESSION['errors'][] = ['title' => 'Вторичный заголовок не может быть пустым'];
    }
    if(empty($_POST['text_desc'])){
        $_SESSION['errors'][] = ['title' => 'Текст секции не может быть пустым'];
    }
    if(empty($_SESSION['errors'])) {
        $toursHeadingPrimary = R::findOne('texts', 'section = ? AND position = ?', ['tours', 'main_heading']);
        $toursHeadingDesc = R::findOne('texts', 'section = ? AND position = ?', ['tours', 'heading_desc']);
        $toursHeadingSecondary = R::findOne('texts', 'section = ? AND position = ?', ['tours', 'heading_secondary']);
        $toursText = R::findOne('texts', 'section = ? AND position = ?', ['tours', 'text_desc']);
    
        $toursHeadingPrimary->value = $_POST['main_heading'];
        $toursHeadingDesc->value = $_POST['heading_desc'];
        $toursHeadingSecondary->value = $_POST['heading_secondary'];
        $toursText->value = $_POST['text_desc'];
    
        $logoNameRes = R::store($toursHeadingPrimary);
        $logoDescRes = R::store($toursHeadingDesc);
        $logoHeadingRes = R::store($toursHeadingSecondary);
        $logoHeadingRes = R::store($toursText);
    
        if($logoNameRes && $logoDescRes && $logoHeadingRes && $logoHeadingRes){
            $_SESSION['success'][] = ['title' => 'Изменения успешно сохранены!'];
        } else {
            $_SESSION['errors'][] = ['title' => 'Произошла ошибка, попробуйте позже.'];
        }
    }
}




ob_start();
include ROOT . 'templates/admin/text-edit/tours-edit.tpl';
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