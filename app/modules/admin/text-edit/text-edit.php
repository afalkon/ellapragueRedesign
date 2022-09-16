<?php

if(isset($_SESSION['logged_user']) && $_SESSION['logged_user']['role'] == 'admin'){

$pageTitle = 'Редактирование текстов';

$mainScreen = R::find('texts', 'section LIKE ?', ['main_screen']);

foreach($mainScreen as $position){
    $mainScreenBlock[$position['position']] = $position['value'];
}




ob_start();
include ROOT . 'templates/admin/text-edit/text-edit.tpl';
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