<?php

if(isset($_SESSION['logged_user']) && $_SESSION['logged_user']['role'] == 'admin'){

$pageTitle = 'Редактирование текстов секции "Индивидуальный маршрут"';

$individualRouteScreen = R::find('texts', 'section LIKE ?', ['individual_route']);

foreach($individualRouteScreen as $position){
    $inadividualRouteScreenBlock[$position['position']] = $position['value'];
}

if(isset($_POST['submit'])){

    if(empty($_POST['individual_heading'])){
        $_SESSION['errors'][] = ['title' => 'Заголовок секции не может быть пустым'];
    }
    if(empty($_POST['section_desc'])){
        $_SESSION['errors'][] = ['title' => 'Подзаголовок секции не может быть пустым'];
    }
    
    if(empty($_SESSION['errors'])) {
        $indiviualRouteHeadingPrimary = R::findOne('texts', 'section = ? AND position = ?', ['individual_route', 'individual_heading']);
        $individualRouteHeadingDesc = R::findOne('texts', 'section = ? AND position = ?', ['individual_route', 'section_desc']);
    
        $indiviualRouteHeadingPrimary->value = $_POST['individual_heading'];
        $individualRouteHeadingDesc->value = $_POST['section_desc'];
    
        $logoNameRes = R::store($indiviualRouteHeadingPrimary);
        $logoDescRes = R::store($individualRouteHeadingDesc);
    
        if($indiviualRouteHeadingPrimary && $individualRouteHeadingDesc){
            $_SESSION['success'][] = ['title' => 'Изменения успешно сохранены!'];
        } else {
            $_SESSION['errors'][] = ['title' => 'Произошла ошибка, попробуйте позже.'];
        }
    }
}




ob_start();
include ROOT . 'templates/admin/text-edit/individual-route-edit.tpl';
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