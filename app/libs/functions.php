<?php

//Getting texts from DB
function getSectionText($sectionName){
    $screenTexts = R::getAll('SELECT * FROM texts WHERE section LIKE ?', [$sectionName]);

    foreach ($screenTexts as $key => $value){
        $screenText[$value['position']] = $value['value'];
    }
    return $screenText;
}

function rus_date(){
    // Перевод
	$translate = array(
		"am" => "дп",
		"pm" => "пп",
		"AM" => "ДП",
		"PM" => "ПП",
		"Monday" => "Понедельник",
		"Mon" => "Пн",
		"Tuesday" => "Вторник",
		"Tue" => "Вт",
		"Wednesday" => "Среда",
		"Wed" => "Ср",
		"Thursday" => "Четверг",
		"Thu" => "Чт",
		"Friday" => "Пятница",
		"Fri" => "Пт",
		"Saturday" => "Суббота",
		"Sat" => "Сб",
		"Sunday" => "Воскресенье",
		"Sun" => "Вс",
		"January" => "Январь",
		"Jan" => "Янв",
		"February" => "Февраль",
		"Feb" => "Фев",
		"March" => "Март",
		"Mar" => "Мар",
		"April" => "Апрель",
		"Apr" => "Апр",
		"May" => "Май",
		"May" => "Май",
		"June" => "Июнь",
		"Jun" => "Июн",
		"July" => "Июль",
		"Jul" => "Июл",
		"August" => "Август",
		"Aug" => "Авг",
		"September" => "Сентябрь",
		"Sep" => "Сен",
		"October" => "Октябрь",
		"Oct" => "Окт",
		"November" => "Ноябрь",
		"Nov" => "Ноя",
		"December" => "Декабрь",
		"Dec" => "Дек",
		"st" => "ое",
		"nd" => "ое",
		"rd" => "е",
		"th" => "ое"
    );
    // если передали дату, то переводим ее
    if ( func_num_args() > 1 ) {
        return strtr(date(func_get_arg(0), func_get_arg(1)), $translate);
    }
    // иначе генерируем текущее время
    else {
        return strtr(date(func_get_arg(0)), $translate);
    }
}


// Getting tours by category
function getTour($catId){
    $toursList = R::getAll( 'SELECT alltours.id, alltours.tourname, alltours.tourtype, alltours.tourdesc 
                            FROM alltours WHERE tourscat_id LIKE ?', [$catId]);
    return $toursList;
}