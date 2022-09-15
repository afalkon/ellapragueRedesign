<?php

$pageTitle = "Статистика";

// All visitors
$allVisitors = R::find('stats');

foreach($allVisitors as $visitor){
    $sessionsArr[] = $visitor['hits'];
}

$uniqueVisitors = count($allVisitors);
$sessionsNum = array_sum($sessionsArr);

// All devices
$allDevices = R::load('devices', 1);

$mobiles = $allDevices['mobile'];
$tablets = $allDevices['tablet'];
$desktops = $allDevices['desktop'];

// [0 - mobiles, 1 - tablets, 2-desktops]
$devicesArr = [$mobiles, $tablets, $desktops];
$devicesJson = json_encode($devicesArr);

// Counter
require_once ROOT . "libs/mobile-detect.php";



if (!isset($_SESSION['visitorIp'])){
    $_SESSION['visitorIp'] = $_SERVER['REMOTE_ADDR'];

    $stats = R::findOne('stats', 'ip = ?', [$_SERVER['REMOTE_ADDR']]);

    if(empty($stats)){
        $uniqueVisitor = R::dispense('stats');

        $uniqueVisitor->ip = $remoteAddress;
        $uniqueVisitor->hits = 1;

        $savingResult = R::store($uniqueVisitor);
    } else {
        $visitor = R::load('stats', $stats['id']);

        $visitor->hits = $stats['hits'] + 1;

        $savingResult = R::store($visitor);
    }
    $detect = new Mobile_Detect;
    $device = R::load('devices', 1);

    if($detect->isMobile() && !$detect->isTablet()){
        $device->mobile = $device['mobile'] + 1;
        R::store($device);
    } elseif($detect->isTablet()){
        $device->tablet = $device['tablet'] + 1;
        R::store($device);
    } else {
        $device->desktop = $device['desktop'] + 1;
        R::store($device);
    }
    
    // Getting referrer info
    $newReferrer = R::dispense('referrers');

    if (isset($_GET['utm_source'])){
        $newReferrer->source = $_GET['utm_source'];
        $newReferrer->type = $_GET['utm_medium'];
        $newReferrer->campaign = $_GET['utm_campaign'];
        $newReferrer->keyword = $_GET['utm_term'];
        $newReferrer->time = time();

        R::store($newReferrer);
    } elseif (isset($_SERVER['HTTP_REFERER'])){
        $newReferrer->source = $_SERVER['HTTP_REFERER'];
        $newReferrer->time = time();

        R::store($newReferrer);
    } else {
        $newReferrer->source = 'Direct input';
        $newReferrer->time = time();

        R::store($newReferrer);
    }
}




/* echo($remoteAddress);
die(); */

ob_start();
include ROOT . 'templates/admin/stats/stats.tpl';
$content = ob_get_contents();
ob_end_clean();




include ROOT . 'templates/_parts/_head.tpl';

include ROOT . 'templates/_parts/_sidebar.tpl';
echo $content;

include ROOT . 'templates/_parts/_foot.tpl';

$_SESSION['errors'] = array();
$_SESSION['success'] = array();