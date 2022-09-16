<main class="adminPage">
<section class="admin__main">
            <div class="admin__messages">
                <div class="justify-content-sb">
                    <h2 class="admin__messages--heading">Редактирование текстов</h2>
                </div>
                
                <h3 class="admin__form--heading">Секция "Контакты"</h3>

                <?php include_once ROOT . "templates/components/errors.tpl"; ?>
                <?php include_once ROOT . "templates/components/success.tpl"; ?>

                <form class="admin__form" action="<?=HOST?>contacts-edit" method="POST">
                    <label class="admin__input--label">
                        <p>Основной заголовок</p>
                        <?php if(!empty($_POST['contacts_main_heading'])): ?>
                            <input type="text" class="admin__input--text" name="contacts_main_heading" value="<?=$_POST['contacts_main_heading']?>">
                        <?php else: ?>
                            <input type="text" class="admin__input--text" name="contacts_main_heading" value="<?=$contactScreenBlock['contacts_main_heading']?>">
                        <?php endif; ?>
                    </label>
                    
                    <label class="admin__input--label">
                        <p>Подзаголовок секции</p>
                        <?php if(!empty($_POST['contacts_main_desc'])): ?>
                            <textarea name="contacts_main_desc" class="admin__input--textarea"><?=$_POST['contacts_main_desc']?></textarea>
                        <?php else: ?>
                            <textarea name="contacts_main_desc" class="admin__input--textarea"><?=$contactScreenBlock['contacts_main_desc']?></textarea>
                        <?php endif; ?>
                    </label>

                    <label class="admin__input--label">
                        <p>Дисклеймер</p>
                        <?php if(!empty($_POST['contacts_expl'])): ?>
                            <input type="text" class="admin__input--text" name="contacts_expl" value="<?=$_POST['contacts_expl']?>">
                        <?php else: ?>
                            <input type="text" class="admin__input--text" name="contacts_expl" value="<?=$contactScreenBlock['contacts_expl']?>">
                        <?php endif; ?>
                    </label>

                    <label class="admin__input--label">
                        <p>Текст секции</p>
                        <?php if(!empty($_POST['contacts_call'])): ?>
                            <textarea name="contacts_call" class="admin__input--textarea"><?=$_POST['contacts_call']?></textarea>
                        <?php else: ?>
                            <textarea name="contacts_call" class="admin__input--textarea"><?=$contactScreenBlock['contacts_call']?></textarea>
                        <?php endif; ?>
                    </label>
                    <button class="admin__form--submit" name="submit" type="submit">Сохранить изменения</button>
                </form>
                    
                
                
            </div>
        </section>
    </main>