    <main class="loginPage">
        <section class="loginPage__header">
            <a href="<?=HOST?>" class="header__logo">
                <p class="header__logo--name">Ильвира Рахманова</p>
                <p class="header__logo--desc">Лицензированный гид в Праге</p>
            </a>
        </section>
        <section class="loginPage__login">
            <form action="" class="loginPage__form" method="POST">
                <h4 class="loginPage__form--heading">Вход для администратора</h4>

                <?php include_once ROOT . 'templates/components/errors.tpl'; ?>

                <label for="" class="loginPage__form--inputTitle">

                    <?php if(!empty($loginClean)) : ?>
                        <input name="login" type="text" class="loginPage__form--input" value="<?=$_POST['login']?>">
                    <?php else: ?>
                        <input name="login" type="text" class="loginPage__form--input" placeholder="Логин">
                    <?php endif; ?>

                </label>
                <label for="" class="loginPage__form--inputTitle">

                    <?php if(!empty($passwordClean)) : ?>
                        <input name="password" type="password" class="loginPage__form--input" value="<?=$_POST['password']?>">
                    <?php else: ?>
                        <input name="password" type="password" class="loginPage__form--input" placeholder="Пароль">
                    <?php endif; ?>

                </label>
                <button type="submit" name="submit" value="login" class="loginPage__form--button">Вход</button>

                <?php if (!empty($_SESSION['errors'])): ?>
                    <?php foreach($_SESSION['errors'] as $error): ?>
                        <?php if (in_array('passwordRecovery', $error)): ?>
                            <a href="<?=HOST?>password-recovery" class="loginPage__form--passwordRecovery">Восстановить пароль</a>
                        <?php endif; ?>
                    <?php endforeach; ?>
                <?php endif; ?>

            </form>
        </section>
    </main>
    <?php $_SESSION['errors'] = array(); ?>

