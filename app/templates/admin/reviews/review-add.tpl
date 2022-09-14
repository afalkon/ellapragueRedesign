<main class="adminPage">
<section class="admin__main">
            <div class="admin__messages">
                <div class="justify-content-sb">
                    <h2 class="admin__messages--heading">Добавить новый отзыв</h2>
                </div>

                <form class="admin__form" enctype="multipart/form-data" action="<?=HOST?>review-add" method="POST">
                    <label>
                        <?php if(!empty($_POST['review_name'])): ?>
                            <input type="text" class="admin__input--text" name="review_name" value="<?=$_POST['review_name']?>">
                        <?php else: ?>
                            <input type="text" class="admin__input--text" name="review_name" placeholder="Имя и фамилия">
                        <?php endif; ?>
                    </label>
                        <?php if(!empty($_POST['review'])): ?>
                            <textarea name="review" class="admin__input--textarea"><?=$_POST['review']?></textarea>
                        <?php else: ?>
                            <textarea name="review" class="admin__input--textarea" placeholder="Текст отзыва"></textarea>
                        <?php endif; ?>
                    </label>
                    <label class="admin__input--label"><p>Выберите заказнные экскурсии</p>
                        <select class="admin__input--select__multiple" name="destination[]" multiple scroll="no">
                        <?php if(!empty($_POST['destination'])): ?>
                            <?php foreach($destinations as $destination): ?>
                                <option value="<?=$destination['id']?>"><?=$destination['tourname']?></option>
                            <?php endforeach; ?>
                        <?php else: ?>
                            <?php foreach($destinations as $destination): ?>
                                <option value="<?=$destination['id']?>"><?=$destination['tourname']?></option>
                            <?php endforeach; ?>
                        <?php endif; ?>
                        </select>
                    </label>
                    <label class="admin__input--label"><p>Загрузите фото для отзыва</p>
                        <input type="file" name="review_photo" class="admin__input--file__button">
                    </label>
                    <label class="admin__input--label"><p>Видимость на сайте</p>
                        <input class="admin__input--checkbox" name="visibility" type="checkbox">
                    </label>
                    <button class="admin__form--submit" name="submit" type="submit">Сохранить</button>
                </form>

                
            </div>
        </section>
    </main>