<?php

if(isset($_SESSION['logged_user']) && $_SESSION['logged_user']['role'] == 'admin'){

$pageTitle = 'Редактирование текстов секции "Обо мне"';

$aboutScreen = R::find('texts', 'section LIKE ?', ['about_me']);

foreach($aboutScreen as $position){
    $aboutScreenBlock[$position['position']] = $position['value'];
}

if(isset($_POST['submit'])){

    if(empty($_POST['about_main_heading'])){
        $_SESSION['errors'][] = ['title' => 'Заголовок секции не может быть пустым'];
    }
    if(empty($_POST['about_heading_desc'])){
        $_SESSION['errors'][] = ['title' => 'Подзаголовок секции не может быть пустым'];
    }
    if(empty($_POST['about_main_text'])){
        $_SESSION['errors'][] = ['title' => 'Текст секции "Обо мне" не может быть пустым'];
    }
    if(empty($_POST['about_addheading_one'])){
        $_SESSION['errors'][] = ['title' => 'Вторичные заголовки секции не могут быть пустыми'];
    }
    if(empty($_POST['about_addheading_two'])){
        $_SESSION['errors'][] = ['title' => 'Вторичные заголовки секции не могут быть пустыми'];
    }
    if(empty($_POST['about_addheading_three'])){
        $_SESSION['errors'][] = ['title' => 'Вторичные заголовки секции не могут быть пустыми'];
    }
    if(empty($_POST['about_addtext_one'])){
        $_SESSION['errors'][] = ['title' => 'Вторичные заголовки секции не могут быть пустыми'];
    }
    if(empty($_POST['about_addtext_two'])){
        $_SESSION['errors'][] = ['title' => 'Вторичные заголовки секции не могут быть пустыми'];
    }
    if(empty($_POST['about_addtext_three'])){
        $_SESSION['errors'][] = ['title' => 'Вторичные заголовки секции не могут быть пустыми'];
    }
    if(empty($_SESSION['errors'])) {
        $aboutHeadingPrimary = R::findOne('texts', 'section = ? AND position = ?', ['about_me', 'about_main_heading']);
        $aboutHeadingDesc = R::findOne('texts', 'section = ? AND position = ?', ['about_me', 'about_heading_desc']);
        $aboutText = R::findOne('texts', 'section = ? AND position = ?', ['about_me', 'about_main_text']);
        $aboutHeadingSecondaryOne = R::findOne('texts', 'section = ? AND position = ?', ['about_me', 'about_addheading_one']);
        $aboutHeadingSecondaryTwo = R::findOne('texts', 'section = ? AND position = ?', ['about_me', 'about_addheading_two']);
        $aboutHeadingSecondaryThree = R::findOne('texts', 'section = ? AND position = ?', ['about_me', 'about_addheading_three']);
        $aboutTextSecondaryOne = R::findOne('texts', 'section = ? AND position = ?', ['about_me', 'about_addtext_one']);
        $aboutTextSecondaryTwo = R::findOne('texts', 'section = ? AND position = ?', ['about_me', 'about_addtext_two']);
        $aboutTextSecondaryThree = R::findOne('texts', 'section = ? AND position = ?', ['about_me', 'about_addtext_three']);
    
        $aboutHeadingPrimary->value = $_POST['about_main_heading'];
        $aboutHeadingDesc->value = $_POST['about_heading_desc'];
        $aboutText->value = $_POST['about_main_text'];
        $aboutHeadingSecondaryOne->value = $_POST['about_addheading_one'];
        $aboutHeadingSecondaryTwo->value = $_POST['about_addheading_two'];
        $aboutHeadingSecondaryThree->value = $_POST['about_addheading_three'];
        $aboutTextSecondaryOne->value = $_POST['about_addtext_one'];
        $aboutTextSecondaryTwo->value = $_POST['about_addtext_two'];
        $aboutTextSecondaryThree->value = $_POST['about_addtext_three'];
    
        $aboutHPRes = R::store($aboutHeadingPrimary);
        $aboutHDRes = R::store($aboutHeadingDesc);
        $aboutTextRes = R::store($aboutText);
        $aboutHSResOne = R::store($aboutHeadingSecondaryOne);
        $aboutHSResTwo = R::store($aboutHeadingSecondaryTwo);
        $aboutHSResThree = R::store($aboutHeadingSecondaryThree);
        $aboutTSResOne = R::store($aboutTextSecondaryOne);
        $aboutTSResTwo = R::store($aboutTextSecondaryTwo);
        $aboutTSResThree = R::store($aboutTextSecondaryThree);
    
        if($aboutHPRes && $aboutHDRes && $aboutTextRes && $aboutHSResOne && $aboutHSResTwo &&
            $aboutHSResThree && $aboutTSResOne && $aboutTSResTwo && $aboutTSResThree){
            $_SESSION['success'][] = ['title' => 'Изменения успешно сохранены!'];
        } else {
            $_SESSION['errors'][] = ['title' => 'Произошла ошибка, попробуйте позже.'];
        }
    }
}




ob_start();
include ROOT . 'templates/admin/text-edit/about-edit.tpl';
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