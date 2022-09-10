<?php
$pageTitle = "Новый пароль";

if (!isset($_GET['email']) || !isset($_GET['code'])){
    header("Location: " . HOST);
}

if (isset($_POST['submit']) && $_POST['submit'] == 'newpass'){

    $pswdClean = trim(strip_tags($_POST['password']));
    $rePswdClean = trim(strip_tags($_POST['repassword']));

    if (empty($pswdClean)){
        $_SESSION['errors'][] = ['title' => 'Необходимо ввести новый пароль'];
    }
    if (empty($rePswdClean)){
        $_SESSION['errors'][] = ['title' => 'Необходимо ввести пароль поворно'];
    }

    if (empty($_SESSION['errors'])){

        if ($pswdClean == $rePswdClean){
            $user = R::findOne('users', 'email = ?', [$_GET['email']]);

            if ($_GET['code'] === $user['recovery_code']){
                
                $user->password = $pswdClean;

                $pswdChange = R::store($user);
                if ($pswdChange){
                    $_SESSION['success'][] = ['title' => 'Обновление пароля прошло успешно'];
                } else {
                    $_SESSION['errors'][] = ['title' => 'Что-то пошло не так, попробуйте позже'];
                }
            }
        } else {
            $_SESSION['errors'][] = ['title' => 'Пароли не совпадают'];
        }
    }
}


include ROOT . 'templates/_parts/_head.tpl';

include ROOT . 'templates/login/new-password.tpl';

include ROOT . 'templates/_parts/_footer.tpl';
include ROOT . 'templates/_parts/_foot.tpl';