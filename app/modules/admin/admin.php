<?php

$pageTitle = 'Админ панель';

// Буферизация вывода
ob_start();
include ROOT . 'templates/admin/admin.tpl';
$content = ob_get_contents();
ob_end_clean();


include ROOT . 'templates/_parts/_head.tpl';

include ROOT . 'templates/_parts/_sidebar.tpl';
echo $content;

include ROOT . 'templates/_parts/_foot.tpl';