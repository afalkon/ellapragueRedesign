<?php


$pageTitle = 'Все отзывы';

$allReviews = R::getAll('SELECT * FROM reviews ORDER BY id DESC');
$unreadReviewsNum = R::count('reviews', 'unread = ?', [1]);



ob_start();
include ROOT . 'templates/admin/reviews/reviews-all.tpl';
$content = ob_get_contents();
ob_end_clean();




include ROOT . 'templates/_parts/_head.tpl';

include ROOT . 'templates/_parts/_sidebar.tpl';
echo $content;

include ROOT . 'templates/_parts/_foot.tpl';

$_SESSION['errors'] = array();
$_SESSION['success'] = array();