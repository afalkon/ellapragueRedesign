<main class="adminPage">

    <section class="admin__main">
        <div class="admin__messages">
            <h2 class="admin__messages--heading">Вы действительно хотите удалить отзыв от: <span><?=$reviewToDelete['name']?></span></h2>
            
            <div class="admin__messages--button__box">
                <a href="<?=HOST?>reviews" class="admin__messages--button__link--back">Назад</a>
                <a href="<?=HOST?>review-delete?action=delete&id=<?=$reviewToDelete['id']?>" class="admin__messages--button__link--delete">Удалить</a>
            </div>
        </div>
    </section>
</main>