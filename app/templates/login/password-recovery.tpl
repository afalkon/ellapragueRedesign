    <main class="loginPage">
        <section class="loginPage__header">
            <a href="<?=HOST?>" class="header__logo">
                <p class="header__logo--name">Ильвира Рахманова</p>
                <p class="header__logo--desc">Лицензированный гид в Праге</p>
            </a>
        </section>
        <section class="loginPage__login">
            <form action="" class="loginPage__form" method="POST">
                <h4 class="loginPage__form--heading">Восстановление пароля</h4>

                <?php include_once ROOT . 'templates/components/errors.tpl'; ?>

                <label for="" class="loginPage__form--inputTitle">

                    <?php if(!empty($loginClean)) : ?>
                        <input name="email" type="text" class="loginPage__form--input" value="<?=$_POST['email']?>">
                    <?php else: ?>
                        <input name="email" type="text" class="loginPage__form--input" placeholder="Email">
                    <?php endif; ?>

                </label>

                <button type="submit" name="submit" value="recover" class="loginPage__form--button">Восстановить пароль</button>

                <a href="<?=HOST?>login" class="loginPage__form--passwordRecovery">Войти на сайт</a>
            </form>
        </section>
    </main>
    <?php $_SESSION['errors'] = array(); ?>

