<main class="adminPage">
<section class="admin__main">
            <div class="admin__messages">
                <div class="justify-content-sb">
                    <h2 class="admin__messages--heading">Редактирование текстов</h2>
                </div>
                
                <h3 class="admin__form--heading">Секция "Экскурсии"</h3>

                <?php include_once ROOT . "templates/components/errors.tpl"; ?>
                <?php include_once ROOT . "templates/components/success.tpl"; ?>

                <form class="admin__form" action="<?=HOST?>tours-edit" method="POST">
                    <label class="admin__input--label">
                        <p>Основной заголовок</p>
                        <?php if(!empty($_POST['main_heading'])): ?>
                            <input type="text" class="admin__input--text" name="main_heading" value="<?=$_POST['main_heading']?>">
                        <?php else: ?>
                            <input type="text" class="admin__input--text" name="main_heading" value="<?=$tourScreenBlock['main_heading']?>">
                        <?php endif; ?>
                    </label>
                    <label class="admin__input--label">
                        <p>Подзаголовок секции</p>
                        <?php if(!empty($_POST['heading_desc'])): ?>
                            <input type="text" class="admin__input--text" name="heading_desc" value="<?=$_POST['heading_desc']?>">
                        <?php else: ?>
                            <input type="text" class="admin__input--text" name="heading_desc" value="<?=$tourScreenBlock['heading_desc']?>">
                        <?php endif; ?>
                    </label>
                    <label class="admin__input--label">
                        <p>Вторичный заголовок секции</p>
                        <?php if(!empty($_POST['heading_secondary'])): ?>
                            <input type="text" class="admin__input--text" name="heading_secondary" value="<?=$_POST['heading_secondary']?>">
                        <?php else: ?>
                            <input type="text" class="admin__input--text" name="heading_secondary" value="<?=$tourScreenBlock['heading_secondary']?>">
                        <?php endif; ?>
                    </label>
                    <label class="admin__input--label">
                        <p>Текст секции</p>
                        <?php if(!empty($_POST['text_desc'])): ?>
                            <textarea name="text_desc" class="admin__input--textarea"><?=$_POST['text_desc']?></textarea>
                        <?php else: ?>
                            <textarea name="text_desc" class="admin__input--textarea"><?=$tourScreenBlock['text_desc']?></textarea>
                        <?php endif; ?>
                    </label>
                    <button class="admin__form--submit" name="submit" type="submit">Сохранить изменения</button>
                </form>
                    
                
                
            </div>
        </section>
    </main>