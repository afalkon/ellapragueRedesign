<main class="adminPage">
<section class="admin__main">
            <div class="admin__messages">
                <div class="justify-content-sb">
                    <h2 class="admin__messages--heading">Редактировать экскурсию</h2>
                </div>

                <form class="admin__form" action="<?=HOST?>tour-edit?id=<?=$_GET['id']?>" method="POST">
                    <label>
                        <?php if(!empty($_POST['tour_name'])): ?>
                            <input type="text" class="admin__input--text" name="tour_name" value="<?=$_POST['tour_name']?>">
                        <?php else: ?>
                            <input type="text" class="admin__input--text" name="tour_name" value="<?=$editedTour['tourname']?>">
                        <?php endif; ?>
                    </label>
                    <label class="admin__input--label"><p>Выберите одно из направлений</p>
                        <select class="admin__input--select" name="destination">
                            <?php foreach($destinations as $destination): ?>
                                <option <?php echo $destSelected['id'] == $destination['id'] ? 'selected' : '' ; ?> value="<?=$destination['id']?>"><?=$destination['cat_name']?></option>
                            <?php endforeach; ?>
                        </select>
                    </label>
                    <label class="admin__input--label"><p>Укажите тип экскурсии</p>
                        <?php if(!empty($_POST['tour_type'])): ?>
                            <input class="admin__input--text" name="tour_type" value="<?=$_POST['tour_type']?>">
                        <?php else: ?>
                            <input class="admin__input--text" name="tour_type" value="<?=$editedTour['tourtype']?>">
                        <?php endif; ?>
                    </label>
                    <label>
                        <?php if(!empty($_POST['tour_desc'])): ?>
                            <textarea name="tour_desc" class="admin__input--textarea"><?=$_POST['tour_desc']?></textarea>
                        <?php else: ?>
                            <textarea name="tour_desc" class="admin__input--textarea"><?=$editedTour['tourdesc']?></textarea>
                        <?php endif; ?>
                    </label>
                    <button class="admin__form--submit" name="submit" type="submit">Сохранить</button>
                </form>

                
            </div>
        </section>
    </main>