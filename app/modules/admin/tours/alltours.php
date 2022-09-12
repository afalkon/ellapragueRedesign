<?php


$pageTitle = 'Все направления';

$allTours = R::getAll('SELECT * FROM alltours');


ob_start();
include ROOT . 'templates/admin/tours/alltours.tpl';
$content = ob_get_contents();
ob_end_clean();




include ROOT . 'templates/_parts/_head.tpl';

include ROOT . 'templates/_parts/_sidebar.tpl';
echo $content;

include ROOT . 'templates/_parts/_foot.tpl';

$_SESSION['errors'] = array();
$_SESSION['success'] = array();