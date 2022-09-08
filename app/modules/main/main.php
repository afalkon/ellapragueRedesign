<?php

$pageTitle = 'Индивидуальный гид';

require_once ROOT . 'libs/functions.php';


// Getting all texts
$mainScreenText = getSectionText('main_screen');
$tourScreenText = getSectionText('tours');
$individualScreentext = getSectionText('individual_route');
$aboutScreenText = getSectionText('about_me');
$reviewsScreenText = getSectionText('reviews');
$contactsScreenText = getSectionText('contacts');

// Getting all beans from 'nav' table in DB
$navLinks = R::getAll('SELECT * FROM nav');

foreach ($navLinks as $key => $value){
    $navLink[$value['position']] = ['linkName' => $value['linkname'],
                                    'link' => $value['link']];
}


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