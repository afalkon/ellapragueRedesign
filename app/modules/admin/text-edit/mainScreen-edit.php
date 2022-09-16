<?php

if(isset($_SESSION['logged_user']) && $_SESSION['logged_user']['role'] == 'admin'){
$pageTitle = 'Редактирование текстов главного экрана';

$mainScreen = R::find('texts', 'section LIKE ?', ['main_screen']);

foreach($mainScreen as $position){
    $mainScreenBlock[$position['position']] = $position['value'];
}

if(isset($_POST['submit'])){

    if(empty($_POST['logo_name'])){
        $_SESSION['errors'][] = ['title' => 'Заголовок логотипа не может быть пустым'];
    }
    if(empty($_POST['logo_desc'])){
        $_SESSION['errors'][] = ['title' => 'Подзаголовок логотипа не может быть пустым'];
    }
    if(empty($_POST['main_heading'])){
        $_SESSION['errors'][] = ['title' => 'Главный заголовок сайта не может быть пустым'];
    }
    if(empty($_SESSION['errors'])) {
        $logoName = R::findOne('texts', 'section = ? AND position = ?', ['main_screen', 'logo_name']);
        $logoDesc = R::findOne('texts', 'section = ? AND position = ?', ['main_screen', 'logo_desc']);
        $logoHeading = R::findOne('texts', 'section = ? AND position = ?', ['main_screen', 'main_heading']);
    
        $logoName->value = $_POST['logo_name'];
        $logoDesc->value = $_POST['logo_desc'];
        $logoHeading->value = $_POST['main_heading'];
    
        $logoNameRes = R::store($logoName);
        $logoDescRes = R::store($logoDesc);
        $logoHeadingRes = R::store($logoHeading);
    
        if($logoNameRes && $logoDescRes && $logoHeadingRes){
            $_SESSION['success'][] = ['title' => 'Изменения успешно сохранены!'];
        } else {
            $_SESSION['errors'][] = ['title' => 'Произошла ошибка, попробуйте позже.'];
        }
    }
}




ob_start();
include ROOT . 'templates/admin/text-edit/mainScreen-edit.tpl';
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