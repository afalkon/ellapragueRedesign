<main class="adminPage">
<section class="admin__main">
            <div class="admin__messages">
                <div class="justify-content-sb">
                    <h2 class="admin__messages--heading">Редактировать направление</h2>
                </div>

                <form class="admin__form" action="<?=HOST?>destination-edit?edit=<?=$_GET['edit']?>&id=<?=$_GET['id']?>" method="POST">
                    <label>
                        <?php if(!empty($_POST['dest_name'])): ?>
                            <input class="admin__input--text" name="dest_name" value="<?=$_POST['dest_name']?>">
                        <?php elseif(!empty($destination['cat_name'])): ?>
                            <input class="admin__input--text" name="dest_name" value="<?=$destination['cat_name']?>">
                        <?php endif; ?>
                    </label>
                    <label>
                        <?php if(!empty($_POST['dest_heading'])): ?>
                            <input class="admin__input--text" name="dest_heading" value="<?=$_POST['dest_heading']?>">
                        <?php elseif(!empty($destination['cat_heading'])): ?>
                            <input class="admin__input--text" name="dest_heading" value="<?=$destination['cat_heading']?>">
                        <?php endif; ?>
                    </label>
                    <button class="admin__form--submit" name="submit" type="submit">Сохранить</button>
                </form>

                
            </div>
        </section>
    </main>