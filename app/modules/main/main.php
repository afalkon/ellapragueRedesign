<?php

$pageTitle = 'Индивидуальный гид';


// Getting all tours categories
$toursCats = R::getAll('SELECT * FROM tourscat');

// Getting all reviews
$reviews = R::findALL('reviews');

/* $singleReview = R::load('reviews', 1);

$orderedTours = R::findOne('alltours', 'id = ?', [3]);

$orderedTours->sharedTagList[] = $singleReview;

$resultMany = R::store($orderedTours);

echo $resultMany;
print_r($orderedTours);
die(); */



require ROOT . 'templates/_parts/_head.tpl';

require ROOT . 'templates/main/main.tpl';

require ROOT . 'templates/_parts/_footer.tpl';
require ROOT . 'templates/_parts/_foot.tpl';