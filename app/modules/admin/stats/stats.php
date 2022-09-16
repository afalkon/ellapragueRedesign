<?php

if(isset($_SESSION['logged_user']) && $_SESSION['logged_user']['role'] == 'admin'){
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

} else {
    header("Location: " . HOST);
}