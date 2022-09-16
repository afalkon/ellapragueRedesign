<?php

if(isset($_SESSION['logged_user']) && $_SESSION['logged_user']['role'] == 'admin'){
if (isset($_GET['target']) && $_GET['target'] == 'telegram'){
    $newLead = R::dispense('messendgers');

    $newLead->time = time();
    $newLead->button = 'Telegram';

    if (!empty($_SESSION['google_ads'])){
        $newLead->source = $_SESSION['google_ads']['utm_source'];
        $newLead->type = $_SESSION['google_ads']['utm_medium'];
        $newLead->campaign = $_SESSION['google_ads']['utm_campaign'];
        $newLead->keyword = $_SESSION['google_ads']['utm_term'];
    } elseif (!empty($_SERVER['HTTP_REFERER'])){
        $newLead->source = $_SERVER['HTTP_REFERER'];
    } else {
        $newLead->source = 'Direct';
    }
    R::store($newLead);
    header("Location: tg://resolve?domain=ellaprague");

} elseif (isset($_GET['target']) && $_GET['target'] == 'whatsapp') {
    $newLead = R::dispense('messendgers');

    $newLead->time = time();
    $newLead->button = 'WhatsApp';

    if (!empty($_SESSION['google_ads'])){
        $newLead->source = $_SESSION['google_ads']['utm_source'];
        $newLead->type = $_SESSION['google_ads']['utm_medium'];
        $newLead->campaign = $_SESSION['google_ads']['utm_campaign'];
        $newLead->keyword = $_SESSION['google_ads']['utm_term'];
    } elseif (!empty($_SERVER['HTTP_REFERER'])){
        $newLead->source = $_SERVER['HTTP_REFERER'];
    } else {
        $newLead->source = 'Direct';
    }
    R::store($newLead);
    header("Location: https://wa.me/420777655867");

} elseif (isset($_GET['target']) && $_GET['target'] == 'viber') {
    $newLead = R::dispense('messendgers');

    $newLead->time = time();
    $newLead->button = 'Viber';

    if (!empty($_SESSION['google_ads'])){
        $newLead->source = $_SESSION['google_ads']['utm_source'];
        $newLead->type = $_SESSION['google_ads']['utm_medium'];
        $newLead->campaign = $_SESSION['google_ads']['utm_campaign'];
        $newLead->keyword = $_SESSION['google_ads']['utm_term'];
    } elseif (!empty($_SERVER['HTTP_REFERER'])){
        $newLead->source = $_SERVER['HTTP_REFERER'];
    } else {
        $newLead->source = 'Direct';
    }
    R::store($newLead);
    header("Location: viber://chat?number=%2B420777655867");

}

} else {
    header("Location: " . HOST);
}