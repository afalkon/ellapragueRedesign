<?php


$pageTitle = 'Все направления';

$destinations = R::getAll('SELECT * FROM tourscat');


ob_start();
include ROOT . 'templates/admin/tours/destinations.tpl';
$content = ob_get_contents();
ob_end_clean();




include ROOT . 'templates/_parts/_head.tpl';

include ROOT . 'templates/_parts/_sidebar.tpl';
echo $content;

include ROOT . 'templates/_parts/_foot.tpl';

$_SESSION['errors'] = array();
$_SESSION['success'] = array();