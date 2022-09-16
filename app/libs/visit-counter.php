<?php

// Statistics into session
if (isset($_GET['utm_source'])){
    if(empty($_SESSION['google_ads'])){
        $_SESSION['google_ads'] =     ['utm_source' => $_GET['utm_source'],
                                        'utm_medium' => $_GET['utm_medium'],
                                        'utm_campaign' => $_GET['utm_campaign'],
                                        'utm_term' => $_GET['utm_term']];
    }
} elseif (isset($_SERVER['HTTP_REFERER'])){
    if(empty($_SESSION['HTTP_REFERER'])){
        $_SESSION['HTTP_REFERER'] = $_SERVER['HTTP_REFERER'];
    }
    
}

// Counter
require_once ROOT . "libs/mobile-detect.php";



if (!isset($_SESSION['counter'])){
    $_SESSION['counter']['ip'] = $_SERVER['REMOTE_ADDR'];

    $stats = R::findOne('stats', 'ip = ?', [$_SERVER['REMOTE_ADDR']]);

    if(empty($stats)){
        $uniqueVisitor = R::dispense('stats');

        $uniqueVisitor->ip = $remoteAddress;
        $uniqueVisitor->hits = 1;

        $savingResult = R::store($uniqueVisitor);
    } else {
        $visitor = R::load('stats', $stats['id']);

        if(empty($_SESSION['counter']['newSession'])){
            $_SESSION['counter']['newSession'] = 'true';
            $visitor->hits = $stats['hits'] + 1;

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
        }
        

        $savingResult = R::store($visitor);
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