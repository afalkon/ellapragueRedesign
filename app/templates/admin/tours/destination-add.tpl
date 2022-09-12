<main class="adminPage">
<section class="admin__main">
            <div class="admin__messages">
                <div class="justify-content-sb">
                    <h2 class="admin__messages--heading">Добавить новое направление</h2>
                </div>

                <form class="admin__form" action="<?=HOST?>destination-add" method="POST">
                    <label>
                        <?php if(!empty($_POST['dest_name'])): ?>
                        <input class="admin__input--text" name="dest_name" value="<?=$_POST['dest_name']?>">
                        <?php else: ?>
                        <input class="admin__input--text" name="dest_name" placeholder="Введите название направления">
                        <?php endif; ?>
                    </label>
                    <label>
                        <?php if(!empty($_POST['dest_heading'])): ?>
                        <input class="admin__input--text" name="dest_heading" value="<?=$_POST['dest_heading']?>">
                        <?php else: ?>
                        <input class="admin__input--text" name="dest_heading" placeholder="Введите Отображаемый заголовок">
                        <?php endif; ?>
                    </label>
                    <button class="admin__form--submit" name="submit" type="submit">Сохранить</button>
                </form>

                
            </div>
        </section>
    </main>