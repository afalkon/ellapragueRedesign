<?php
$pageTitle = 'Сообщения';

require_once ROOT . 'libs/pagination.php';

// Getting all messages from DB
$messagesNum = R::count('messagestats');
$pagination = pagination(8, $messagesNum);
$messages = R::find('messagestats', "ORDER BY id DESC {$pagination['sqlPageLimit']}");



/* echo $unreadMessagesNum;
die(); */

if(isset($_GET['id'])){

    $message = R::findOne('messagestats', 'id = ?', [$_GET['id']]);
    $dateTime = explode(' ', $message['datetime']);
    if(!empty($message['unread'])){
        $message->unread = NULL;
        R::store($message);
        header("Location: " . HOST . "messages?id=" . $_GET['id']);
    }
    // Буферизация вывода одного сообщения
    ob_start();
    include ROOT . 'templates/admin/messages/single-message.tpl';
    $content = ob_get_contents();
    ob_end_clean();
} else {
    // Буферизация вывода всех сообщений
    ob_start();
    include ROOT . 'templates/admin/messages/all-messages.tpl';
    $content = ob_get_contents();
    ob_end_clean();
}



include ROOT . 'templates/_parts/_head.tpl';

include ROOT . 'templates/_parts/_sidebar.tpl';
echo $content;

include ROOT . 'templates/_parts/_foot.tpl';