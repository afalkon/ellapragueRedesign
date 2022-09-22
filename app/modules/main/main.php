<?php

$pageTitle = 'Индивидуальный гид';


require_once ROOT . 'libs/visit-counter.php';


// Getting all tours categories
$toursCats = R::getAll('SELECT * FROM tourscat');

// Getting all reviews
$reviews = R::findALL('reviews');

// Sending message
if (isset($_POST['submit'])){



    if (empty(trim($_POST['name']))){
        $_SESSION['errors'][] = ['title' => 'Поле "Имя" является обязательным'];
    }
    if (empty(trim($_POST['phone']))){
        $_SESSION['errors'][] = ['title' => 'Поле "Номер телефона" является обязательным'];
    }
    if (empty(trim($_POST['text']))){
        $_SESSION['errors'][] = ['title' => 'Поле "Сообщение" является обязательным'];
    }

    $messageName = htmlspecialchars(trim($_POST['name']));
    if (!empty($_POST['email'])){
        $messageEmail = htmlspecialchars(trim($_POST['email']));
    }
    $messagePhone = htmlspecialchars(trim($_POST['phone']));
    $messageText = htmlspecialchars(trim($_POST['text']));
    if (!empty($_POST['selectedTour'])){
        $selectedTourId = $_POST['selectedTour'];

        $selectedTourBean = R::load('alltours', $selectedTourId);
        $selectedTourName = $selectedTourBean['tourname'];
    }



    /* Sending */
    if (empty($_SESSION['errors'])){
        
        /* Spam detection */
        $messageWordCount = str_word_count($messageText, 0, "АаБбВвГгДдЕеЁёЖжЗзИиЙйКкЛлМмНнОоПпРрСсТтУуФфХхЦцЧчШшЩщЪъЫыЬьЭэЮюЯяAaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz");
        $keyUpNum = $_POST['keyUpCount'];

        if ($keyUpNum < $messageWordCount) {
    
            $spamSave = R::dispense('spamdetect');
                $spamSave->email = $messageEmail;
                $spamSave->message = $messageText;
                $spamSave->phone = $messagePhone;
            $spamSaveResult = R::store($spamSave);
            $_SESSION['errors'][] = ['title' => 'Сообщение должно быть введено вручную'];
        } else {
            /* End of spam detection */
            /* Email given from DB */
            $primaryEmail = 'ellaprague25@gmail.com';
            $to = $primaryEmail;

            $fromName = "Ильвира Рахманова - Сайт";
            $fromMail = "ellaprague@ellaprague.triaconst.cz";
            $date = date(DATE_RFC2822);
            $subject = "Новая заявка с сайта ellaprague";
            $subject = '=?utf-8?b?'. base64_encode($subject) .'?=';
            $messageId='<'.time().'-'.md5($fromMail.$to).'@'.$_SERVER['SERVER_NAME'].'>';
            $message =  "Поступила новая завка на вашем сайте:<br><br>" .  
                    "Имя пользователя: " . $messageName . ".<br>"; 
            if(!empty($_POST['email'])){
                $message .= "Email: " . $messageEmail . ".<br>"; 
            } else {
                $message .= "Пользователь не указал Email" . ".<br>"; 
            }
            $message .= "Номер телефона: " . $messagePhone . "<br><br>";
            if(!empty($_POST['selectedTour'])){
                $message .= "Выбранная экскурсия: " . $selectedTourName . "<br><br>";
            }
            $message .= "Сообщение:<br>" . $messageText;       
                    

            /* Headers */
            $headers = 'MIME-Version: 1.0' . "\r\n";
            $headers .= "Content-Type: text/html; charset=UTF-8\r\n";
            $headers .= "From: " . $fromName . "<" . $fromMail . "> \r\n";
            $headers .= "Reply to: " . $fromName . "\r\n";
            $headers .= "Date: ". $date ." \r\n";
            $headers .= "Message-ID: ". $messageId ." \r\n";

            /* Sending message */
            $resultMail = mail($to, $subject, $message, $headers);

            /* Adding new line in MessageStats DB && Redirecting to thankyou page */
            if ($resultMail){
                if (isset($_GET['utm_source'])){
                    $source = $_GET['utm_source'];
                    $medium = $_GET['utm_medium'];
                    $campaign = $_GET['utm_campaign'];
                    $keyword = $_GET['utm_term'];

                    $statCase = R::dispense('messagestats');
                        $statCase->name = $messageName;
                        if (!empty($messageEmail)){
                            $statCase->email = $messageEmail;
                        }
                        $statCase->phone = $messagePhone;
                        $statCase->message = $messageText;
                        $statCase->source = $source;
                        $statCase->medium = $medium;
                        $statCase->campaign = $campaign;
                        $statCase->keyword = $keyword;
                        if(!empty($selectedTourName)){
                            $statCase->selected_tour = $selectedTourName;
                        }
                        $statCase->unread = 1;
                    $statsResult = R::store($statCase);
                } elseif(isset($_SERVER['HTTP_REFERER'])) {
                    $statCase = R::dispense('messagestats');
                        $statCase->name = $messageName;
                        if (!empty($messageEmail)){
                            $statCase->email = $messageEmail;
                        }
                        $statCase->phone = $messagePhone;
                        $statCase->message = $messageText;
                        $statCase->source = $_SERVER['HTTP_REFERER'];
                        if(!empty($selectedTourName)){
                            $statCase->selected_tour = $selectedTourName;
                        }
                        $statCase->unread = 1;
                    $statsResult = R::store($statCase);
                } else {
                    $statCase = R::dispense('messagestats');
                        $statCase->name = $messageName;
                        if (!empty($messageEmail)){
                            $statCase->email = $messageEmail;
                        }
                        $statCase->phone = $messagePhone;
                        $statCase->message = $messageText;
                        $statCase->source = "Direct";
                        if(!empty($selectedTourName)){
                            $statCase->selected_tour = $selectedTourName;
                        }
                        $statCase->unread = 1;
                    $statsResult = R::store($statCase);
                }
                $_SESSION['success'][] = ['title' => 'Спасибо! Ваше сообщение отправлено! Я отвечу Вам как можно скорее.'];
            }
        }
    } else {
    }
}



require ROOT . 'templates/_parts/_head.tpl';

require_once ROOT . 'templates/main/main.tpl';

require ROOT . 'templates/_parts/_footer.tpl';
require ROOT . 'templates/_parts/_foot.tpl';

if (!empty($_SESSION['errors'])){
    $_SESSION['errors'] = array();
}
if (!empty($_SESSION['success'])){
    $_SESSION['success'] = array();
}
