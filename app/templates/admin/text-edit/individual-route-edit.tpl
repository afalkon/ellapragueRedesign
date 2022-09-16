<main class="adminPage">
<section class="admin__main">
            <div class="admin__messages">
                <div class="justify-content-sb">
                    <h2 class="admin__messages--heading">Редактирование текстов</h2>
                </div>
                
                <h3 class="admin__form--heading">Секция "Индивидуальный маршрут"</h3>

                <?php include_once ROOT . "templates/components/errors.tpl"; ?>
                <?php include_once ROOT . "templates/components/success.tpl"; ?>

                <form class="admin__form" action="<?=HOST?>individual-route-edit" method="POST">
                    <label class="admin__input--label">
                        <p>Заголовок секции (текст в теге span будет красным)</p>
                        <?php if(!empty($_POST['individual_heading'])): ?>
                            <textarea name="individual_heading" class="admin__input--textarea"><?=$_POST['individual_heading']?></textarea>
                        <?php else: ?>
                            <textarea name="individual_heading" class="admin__input--textarea"><?=$inadividualRouteScreenBlock['individual_heading']?></textarea>
                        <?php endif; ?>
                    </label>
                    <label class="admin__input--label">
                        <p>Подзаголовок секции</p>
                        <?php if(!empty($_POST['section_desc'])): ?>
                            <textarea name="section_desc" class="admin__input--textarea"><?=$_POST['section_desc']?></textarea>
                        <?php else: ?>
                            <textarea name="section_desc" class="admin__input--textarea"><?=$inadividualRouteScreenBlock['section_desc']?></textarea>
                        <?php endif; ?>
                    </label>
                    <button class="admin__form--submit" name="submit" type="submit">Сохранить изменения</button>
                </form>
                    
                
                
            </div>
        </section>
    </main>