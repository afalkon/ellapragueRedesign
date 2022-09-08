<?php

$pageTitle = "Восстановление пароля";

// Checking sending of the form
if (isset($_POST['submit']) && $_POST['submit'] === 'recover'){

    // Cleaning all inputs
    $emailClean = trim(strip_tags($_POST['email']));

    // Checking for empty fields
    if (empty($emailClean)){
        $_SESSION['errors'][] = ['title' => 'Необходимо заполнить Email'];
    }

    // If no empty fields found
    if (empty($_SESSION['errors'])){

        // Getting user by Email
        $userRow = R::findOne('users', 'email = ?', [$emailClean]);

        // Creating a secret code
        $code = substr(str_shuffle('0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'), 0, 30);
       
        // Checking if user exists and sending an email with link
        if (!empty($userRow)){
                // Sending email
            if (empty($errors) && empty($spamDetector)){
            $to = $emailClean;

            $recovery_link = HOST . "new-password?email={$_POST['email']}&code={$code}";
            $fromName = "Ильвира Рахманова - Сайт";
            $fromMail = "ellaprague@ellaprague.triaconst.cz";
            $date = date(DATE_RFC2822);
            $subject = "Восстановление пароля";
            $subject = '=?utf-8?b?'. base64_encode($subject) .'?=';
            $messageId='<'.time().'-'.md5($fromMail.$to).'@'.$_SERVER['SERVER_NAME'].'>';
            $message =  "Вы запросили восстановление пароля.<br><br>" . 
                    "Ваш логин: " . $userRow['loginname'] . ".<br>" . 
                    "Email: " . $userRow['email'] . ".<br>";
            $message .= "<p>Для сброса пароля перейдите по ссылкениже, и установите новый пароль:</p>";
            $message .= '<p><a href="' . $recovery_link . '" target="_blank">Установить новый пароль</a></p>';

            /* Headers */
            $headers = 'MIME-Version: 1.0' . "\r\n";
            $headers .= "Content-Type: text/html; charset=UTF-8\r\n";
            $headers .= "From: " . $fromName . "<" . $fromMail . "> \r\n";
            $headers .= "Reply to: " . $fromMail . "\r\n";
            $headers .= "Date: ". $date ." \r\n";
            $headers .= "Message-ID: ". $messageId ." \r\n";

            /* Sending message */
            $resultMail = mail($to, $subject, $message, $headers);

            $userRow->recovery_code = $code;
            $storeResult = R::store($userRow);

            if ($resultMail && $storeResult){
                $_SESSION['success'][] = ['title' => 'На Ваш почтовый ящик было отправлено письмо с инструкциями по восстановлению пароля.'];
            }
    }
        } else {
            $_SESSION['errors'][] = ['title' => 'Такого Email не существоет в базе данных'];
        }
    }
}


include ROOT . 'templates/_parts/_head.tpl';

include ROOT . 'templates/login/password-recovery.tpl';

include ROOT . 'templates/_parts/_footer.tpl';
include ROOT . 'templates/_parts/_foot.tpl';