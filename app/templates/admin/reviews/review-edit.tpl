<main class="adminPage">
<section class="admin__main">
            <div class="admin__messages">
                <div class="justify-content-sb">
                    <h2 class="admin__messages--heading">Добавить новый отзыв</h2>
                </div>

                <form class="admin__form" enctype="multipart/form-data" action="<?=HOST?>review-edit?edit=true&id=<?=$reviewData['id']?>" method="POST">
                    <label>
                        <?php if(!empty($_POST['review_name'])): ?>
                            <input type="text" class="admin__input--text" name="review_name" value="<?=$_POST['review_name']?>">
                        <?php else: ?>
                            <input type="text" class="admin__input--text" name="review_name" value="<?=$reviewData['name']?>">
                        <?php endif; ?>
                    </label>
                        <?php if(!empty($_POST['review'])): ?>
                            <textarea name="review" class="admin__input--textarea"><?=$_POST['review']?></textarea>
                        <?php else: ?>
                            <textarea name="review" class="admin__input--textarea"><?=$reviewData['review']?></textarea>
                        <?php endif; ?>
                    </label>
                    <label class="admin__input--label"><p>Выберите заказнные экскурсии (при зажатой клавише "Ctrl")</p>

                    
                    <?php $sharedTours = $reviewData->sharedAlltoursList; ?>

                    <?php foreach($sharedTours as $sharedTour): ?>
                        <?php $selectedTourId[] = $sharedTour['id']; ?>
                    <?php endforeach; ?>

                        <select class="admin__input--select__multiple" name="destination[]" multiple scroll="no">
                        <?php if(!empty($_POST['destination'])): ?>
                            <?php foreach($destinations as $destination): ?>
                                <option value="<?=$destination['id']?>"><?=$destination['tourname']?></option>
                            <?php endforeach; ?>
                        <?php else: ?>
                            <?php foreach($destinations as $destination): ?>
                                <option value="<?=$destination['id']?>" <?php echo in_array($destination['id'], $selectedTourId) ? 'selected' : ''; ?>><?=$destination['tourname']?></option>
                            <?php endforeach; ?>
                        <?php endif; ?>
                        </select>
                    </label>
                    <label class="admin__input--label">
                        <p>Изменить фото для отзыва</p>
                        <div class="admin__editAvatar--preview" style="background-image: url('<?=HOST?>img/userContent/avatars/<?=$reviewData['avatar']?>');"></div>
                        <input type="file" name="review_photo" class="admin__input--file__button">
                    </label>
                    <label class="admin__input--label"><p>Видимость на сайте</p>
                        <?php if($reviewData['visible'] == 1): ?>
                            <input class="admin__input--checkbox" name="visibility" type="checkbox" checked>
                        <?php else: ?>
                            <input class="admin__input--checkbox" name="visibility" type="checkbox">
                        <?php endif; ?>
                    </label>
                    <button class="admin__form--submit" name="submit" type="submit">Сохранить</button>
                </form>

                
            </div>
        </section>
    </main>