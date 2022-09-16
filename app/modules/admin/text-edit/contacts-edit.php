<?php

if(isset($_SESSION['logged_user']) && $_SESSION['logged_user']['role'] == 'admin'){
$pageTitle = 'Редактирование текстов секции контакты';

$contactScreen = R::find('texts', 'section LIKE ?', ['contacts']);

foreach($contactScreen as $position){
    $contactScreenBlock[$position['position']] = $position['value'];
}

if(isset($_POST['submit'])){

    if(empty($_POST['contacts_main_heading'])){
        $_SESSION['errors'][] = ['title' => 'Заголовок секции не может быть пустым'];
    }
    if(empty($_POST['contacts_main_desc'])){
        $_SESSION['errors'][] = ['title' => 'Подзаголовок секции не может быть пустым'];
    }
    if(empty($_POST['contacts_expl'])){
        $_SESSION['errors'][] = ['title' => 'Дисклеймер не может быть пустым'];
    }
    if(empty($_POST['contacts_call'])){
        $_SESSION['errors'][] = ['title' => 'Текст секции не может быть пустым'];
    }

    if(empty($_SESSION['errors'])) {
        $contactHeadingPrimary = R::findOne('texts', 'section = ? AND position = ?', ['contacts', 'contacts_main_heading']);
        $contactHeadingDesc = R::findOne('texts', 'section = ? AND position = ?', ['contacts', 'contacts_main_desc']);
        $contactHeadingSecondary = R::findOne('texts', 'section = ? AND position = ?', ['contacts', 'contacts_expl']);
        $contactText = R::findOne('texts', 'section = ? AND position = ?', ['contacts', 'contacts_call']);
    
        $contactHeadingPrimary->value = $_POST['contacts_main_heading'];
        $contactHeadingDesc->value = $_POST['contacts_main_desc'];
        $contactHeadingSecondary->value = $_POST['contacts_expl'];
        $contactText->value = $_POST['contacts_call'];
    
        $contactHPRes = R::store($contactHeadingPrimary);
        $contactHDRes = R::store($contactHeadingDesc);
        $contactHSRes = R::store($contactHeadingSecondary);
        $contactTextRes = R::store($contactText);
    
        if($contactHPRes && $contactHDRes && $contactHSRes && $contactTextRes){
            $_SESSION['success'][] = ['title' => 'Изменения успешно сохранены!'];
        } else {
            $_SESSION['errors'][] = ['title' => 'Произошла ошибка, попробуйте позже.'];
        }
    }
}




ob_start();
include ROOT . 'templates/admin/text-edit/contacts-edit.tpl';
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