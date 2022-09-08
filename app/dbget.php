<?php

// Red Bean ORM including
require ROOT . 'libs/rb-mysql.php';
R::setup('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASS);

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