<main class="adminPage">
<section class="admin__main">
            <div class="admin__messages">
                <div class="justify-content-sb">
                    <h2 class="admin__messages--heading">Редактирование текстов</h2>
                </div>
                
                <h3 class="admin__form--heading">Секция "Экскурсии"</h3>

                <?php include_once ROOT . "templates/components/errors.tpl"; ?>
                <?php include_once ROOT . "templates/components/success.tpl"; ?>

                <form class="admin__form" action="<?=HOST?>about-edit" method="POST">
                    <label class="admin__input--label">
                        <p>Основной заголовок</p>
                        <?php if(!empty($_POST['about_main_heading'])): ?>
                            <input type="text" class="admin__input--text" name="about_main_heading" value="<?=$_POST['about_main_heading']?>">
                        <?php else: ?>
                            <input type="text" class="admin__input--text" name="about_main_heading" value="<?=$aboutScreenBlock['about_main_heading']?>">
                        <?php endif; ?>
                    </label>
                    <label class="admin__input--label">
                        <p>Подзаголовок секции</p>
                        <?php if(!empty($_POST['about_heading_desc'])): ?>
                            <textarea name="about_heading_desc" class="admin__input--textarea"><?=$_POST['about_heading_desc']?></textarea>
                        <?php else: ?>
                            <textarea name="about_heading_desc" class="admin__input--textarea"><?=$aboutScreenBlock['about_heading_desc']?></textarea>
                        <?php endif; ?>
                    </label>
                    <label class="admin__input--label">
                        <p>Текст секции</p>
                        <?php if(!empty($_POST['about_main_text'])): ?>
                            <textarea name="about_main_text" class="admin__input--textarea"><?=$_POST['about_main_text']?></textarea>
                        <?php else: ?>
                            <textarea name="about_main_text" class="admin__input--textarea"><?=$aboutScreenBlock['about_main_text']?></textarea>
                        <?php endif; ?>
                    </label>

                    <label class="admin__input--label">
                        <p>Вторичный заголовок #1</p>
                        <?php if(!empty($_POST['about_addheading_one'])): ?>
                            <input type="text" class="admin__input--text" name="about_addheading_one" value="<?=$_POST['about_addheading_one']?>">
                        <?php else: ?>
                            <input type="text" class="admin__input--text" name="about_addheading_one" value="<?=$aboutScreenBlock['about_addheading_one']?>">
                        <?php endif; ?>
                    </label>
                    <label class="admin__input--label">
                        <p>Вторичный текст #1</p>
                        <?php if(!empty($_POST['about_addtext_one'])): ?>
                            <textarea name="about_addtext_one" class="admin__input--textarea"><?=$_POST['about_addtext_one']?></textarea>
                        <?php else: ?>
                            <textarea name="about_addtext_one" class="admin__input--textarea"><?=$aboutScreenBlock['about_addtext_one']?></textarea>
                        <?php endif; ?>
                    </label>

                    <label class="admin__input--label">
                        <p>Вторичный заголовок #2</p>
                        <?php if(!empty($_POST['about_addheading_two'])): ?>
                            <input type="text" class="admin__input--text" name="about_addheading_two" value="<?=$_POST['about_addheading_two']?>">
                        <?php else: ?>
                            <input type="text" class="admin__input--text" name="about_addheading_two" value="<?=$aboutScreenBlock['about_addheading_two']?>">
                        <?php endif; ?>
                    </label>
                    <label class="admin__input--label">
                        <p>Вторичный текст #2</p>
                        <?php if(!empty($_POST['about_addtext_two'])): ?>
                            <textarea name="about_addtext_two" class="admin__input--textarea"><?=$_POST['about_addtext_two']?></textarea>
                        <?php else: ?>
                            <textarea name="about_addtext_two" class="admin__input--textarea"><?=$aboutScreenBlock['about_addtext_two']?></textarea>
                        <?php endif; ?>
                    </label>

                    <label class="admin__input--label">
                        <p>Вторичный заголовок #3</p>
                        <?php if(!empty($_POST['about_addheading_three'])): ?>
                            <input type="text" class="admin__input--text" name="about_addheading_three" value="<?=$_POST['about_addheading_three']?>">
                        <?php else: ?>
                            <input type="text" class="admin__input--text" name="about_addheading_three" value="<?=$aboutScreenBlock['about_addheading_three']?>">
                        <?php endif; ?>
                    </label>
                    <label class="admin__input--label">
                        <p>Вторичный текст #3</p>
                        <?php if(!empty($_POST['about_addtext_three'])): ?>
                            <textarea name="about_addtext_three" class="admin__input--textarea"><?=$_POST['about_addtext_three']?></textarea>
                        <?php else: ?>
                            <textarea name="about_addtext_three" class="admin__input--textarea"><?=$aboutScreenBlock['about_addtext_three']?></textarea>
                        <?php endif; ?>
                    </label>

                    <button class="admin__form--submit" name="submit" type="submit">Сохранить изменения</button>
                </form>
                    
                
                
            </div>
        </section>
    </main>