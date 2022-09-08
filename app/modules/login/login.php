<?php

$pageTitle = 'Вход';

// Getting info from $_POST
if(isset($_POST['submit']) && $_POST['submit'] === 'login'){
    
    // Cleaning fields
    $loginClean = trim(strip_tags($_POST['login']));
    $passwordClean = trim(strip_tags($_POST['password']));

    // Checking fields
    if (empty($loginClean)){
        $_SESSION['errors'][] = ['title' => 'Не указан Логин.'];
    }
    if (empty($passwordClean)){
        $_SESSION['errors'][] = ['title' => 'Введите пароль'];
    }

    if (empty($_SESSION['errors'])){

        // Getting the exact row from DB
        $userRow = R::getRow('SELECT * FROM users WHERE loginname LIKE ?', [$loginClean]);

        // Checking the user bean is not empty
        if (!empty($userRow)){

            // Checking password and login
            if ($passwordClean === $userRow['password']){
                $_SESSION['logged_user'][] = [  'email' => $userRow['email'],
                                                'name' => $userRow['name'],
                                                'role' => $userRow['role']];

                header("Location: " . HOST . "admin");
            } else {
                $_SESSION['errors'][] = [   'title' => 'Вы ввели не правильный пароль',
                                            'passwordRecovery' => 'passwordRecovery'];
            }
        } else {
            $_SESSION['errors'][] = ['title' => 'Такого пользователя не существует'];
        }
    }

}


include ROOT . 'templates/_parts/_head.tpl';

include ROOT . 'templates/login/login.tpl';

include ROOT . 'templates/_parts/_footer.tpl';
include ROOT . 'templates/_parts/_foot.tpl';

if (!empty($_SESSION['errors'])){
    $_SESSION['errors'][] = array();
}