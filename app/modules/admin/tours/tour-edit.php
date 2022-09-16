<?php

if(isset($_SESSION['logged_user']) && $_SESSION['logged_user']['role'] == 'admin'){
$pageTitle = 'Редактирование экскурсии';

if (isset($_GET['id'])){
    $editedTour = R::load('alltours', $_GET['id']);

    $destSelected = $editedTour->tourscat;
    $destinations = R::getAll('SELECT id, cat_name FROM tourscat');
    
    if (isset($_POST['submit'])){
        if (empty($_POST['tour_name'])){
            $_SESSION['errors'][] = ['title' => 'Необходимо ввести назывние экскурсии'];
        }
        if (empty($_POST['tour_type'])){
            $_SESSION['errosrs'][] = ['title' => 'Необходимо указать направление экскурсии'];
        }  
        if (empty($_POST['tour_desc'])){
            $_SESSION['errosrs'][] = ['title' => 'Необходимо заполнить краткое описание экскурсии'];
        }   
        if (empty($_SESSION['errors'])){
    
            $editedTour->tourname = $_POST['tour_name'];
            $editedTour->tourscat = R::load('tourscat', $_POST['destination']);
            $editedTour->tourtype = $_POST['tour_type'];
            $editedTour->tourdesc = $_POST['tour_desc'];
    
            $savingResult = R::store($editedTour);
    
            if ($savingResult){
                $_SESSION['success'][] = ['title' => 'Экскурсия успешно изменена'];
                header("Location: " . HOST . "alltours");
            } else {
                $_SESSION['errors'][] = ['title' => 'Что-то пошло не так'];
            }
        }
    }
}
    
    
    
    



// Буферизация вывода
ob_start();
include ROOT . 'templates/admin/tours/tour-edit.tpl';
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
