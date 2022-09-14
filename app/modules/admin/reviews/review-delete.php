<?php
$pageTitle = 'Удаление отзыва';

$reviewToDelete = R::findOne('reviews', 'id = ?', [$_GET['id']]);

if (isset($_GET['action']) && $_GET['action'] == 'delete'){

    // Avatar delete
    if (!empty($reviewToDelete['avatar'])){
        $deleteAvatar = ROOT . 'img/userContent/avatars/' . $reviewToDelete['avatar'];
        unlink($deleteAvatar);
    }
    
    
    $deleteResult = R::trash($reviewToDelete);
    if($deleteResult){
        $_SESSION['success'][] = ['title' => 'Экскурсия успешно удалена'];
        header("Location: " . HOST . "reviews");
    } else {
        $_SESSION['errors'][] = ['title' => 'Произошла ощибка'];
    }
}


// Буферизация вывода всех сообщений
ob_start();
include ROOT . 'templates/admin/reviews/review-delete.tpl';
$content = ob_get_contents();
ob_end_clean();


include ROOT . 'templates/_parts/_head.tpl';

include ROOT . 'templates/_parts/_sidebar.tpl';
echo $content;

include ROOT . 'templates/_parts/_foot.tpl';