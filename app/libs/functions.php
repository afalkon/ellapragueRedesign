<?php

//Getting texts from DB
function getSectionText($sectionName){
    $screenTexts = R::getAll('SELECT * FROM texts WHERE section LIKE ?', [$sectionName]);

    foreach ($screenTexts as $key => $value){
        $screenText[$value['position']] = $value['value'];
    }
    return $screenText;
}


// Getting tours by category
function getTour($catId){
    $toursList = R::getAll( 'SELECT alltours.tourname, alltours.tourtype, alltours.tourdesc 
                            FROM alltours WHERE tourscat_id LIKE ?', [$catId]);
    return $toursList;
}