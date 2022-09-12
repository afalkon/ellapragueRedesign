<?php


$pageTitle = 'Добавление направления';

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
        $newTour = R::dispense('alltours');

        $newTour->tourname = $_POST['tour_name'];
        $newTour->tourscat = R::load('tourscat', $_POST['destination']);
        $newTour->tourtype = $_POST['tour_type'];
        $newTour->tourdesc = $_POST['tour_desc'];

        $savingResult = R::store($newTour);

        if ($savingResult){
            $_SESSION['success'][] = ['title' => 'Новая экскурсия успешно сохранена'];
            header("Location: " . HOST . "alltours");
        } else {
            $_SESSION['errors'][] = ['title' => 'Что-то пошло не так'];
        }
    }
}

// Буферизация вывода
ob_start();
include ROOT . 'templates/admin/tours/tour-add.tpl';
$content = ob_get_contents();
ob_end_clean();


include ROOT . 'templates/_parts/_head.tpl';

include ROOT . 'templates/_parts/_sidebar.tpl';
echo $content;

include ROOT . 'templates/_parts/_foot.tpl';

$_SESSION['errors'] = array();
$_SESSION['success'] = array();