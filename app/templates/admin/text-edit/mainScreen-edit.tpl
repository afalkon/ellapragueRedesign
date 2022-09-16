<main class="adminPage">
<section class="admin__main">
            <div class="admin__messages">
                <div class="justify-content-sb">
                    <h2 class="admin__messages--heading">Редактирование текстов главного экрана на сайте</h2>
                </div>
                
                <h3 class="admin__form--heading">Главный экран</h3>

                <?php include_once ROOT . "templates/components/errors.tpl"; ?>
                <?php include_once ROOT . "templates/components/success.tpl"; ?>

                <form class="admin__form" action="<?=HOST?>mainScreen-edit" method="POST">
                    <label class="admin__input--label">
                        <p>Заголовок логотипа</p>
                        <?php if(!empty($_POST['logo_name'])): ?>
                            <input type="text" class="admin__input--text" name="logo_name" value="<?=$_POST['logo_name']?>">
                        <?php else: ?>
                            <input type="text" class="admin__input--text" name="logo_name" value="<?=$mainScreenBlock['logo_name']?>">
                        <?php endif; ?>
                    </label>
                    <label class="admin__input--label">
                        <p>Подзаголовок логотипа</p>
                        <?php if(!empty($_POST['logo_desc'])): ?>
                            <input type="text" class="admin__input--text" name="logo_desc" value="<?=$_POST['logo_desc']?>">
                        <?php else: ?>
                            <input type="text" class="admin__input--text" name="logo_desc" value="<?=$mainScreenBlock['logo_desc']?>">
                        <?php endif; ?>
                    </label>
                    <label class="admin__input--label">
                        <p>Главный заголовк сайта</p>
                        <?php if(!empty($_POST['main_heading'])): ?>
                            <textarea name="main_heading" class="admin__input--textarea"><?=$_POST['main_heading']?></textarea>
                        <?php else: ?>
                            <textarea name="main_heading" class="admin__input--textarea"><?=$mainScreenBlock['main_heading']?></textarea>
                        <?php endif; ?>
                    </label>
                    <button class="admin__form--submit" name="submit" type="submit">Сохранить изменения</button>
                </form>
                    
                
                
            </div>
        </section>
    </main>