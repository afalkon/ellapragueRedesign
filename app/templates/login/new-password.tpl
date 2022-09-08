    <main class="loginPage">
        <section class="loginPage__header">
            <a href="<?=HOST?>" class="header__logo">
                <p class="header__logo--name">Ильвира Рахманова</p>
                <p class="header__logo--desc">Лицензированный гид в Праге</p>
            </a>
        </section>
        <section class="loginPage__login">
            <form action="" class="loginPage__form" method="POST">
                <h4 class="loginPage__form--heading">Новый пароль</h4>

                <?php include_once ROOT . 'templates/components/errors.tpl'; ?>

                <label for="" class="loginPage__form--inputTitle">

                    <?php if(!empty($pswdClean)) : ?>
                        <input name="password" type="password" class="loginPage__form--input" value="<?=$_POST['password']?>">
                    <?php else: ?>
                        <input name="password" type="password" class="loginPage__form--input" placeholder="Новый пароль">
                    <?php endif; ?>

                </label>
                <label for="" class="loginPage__form--inputTitle">

                    <?php if(!empty($rePswdClean)) : ?>
                        <input name="repassword" type="password" class="loginPage__form--input" value="<?=$_POST['repassword']?>">
                    <?php else: ?>
                        <input name="repassword" type="password" class="loginPage__form--input" placeholder="Повторите пароль">
                    <?php endif; ?>

                </label>
                <button type="submit" name="submit" value="newpass" class="loginPage__form--button">Установить пароль</button>

            </form>
        </section>
    </main>
    <?php $_SESSION['errors'] = array(); ?>

