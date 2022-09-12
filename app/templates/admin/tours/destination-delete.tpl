<main class="adminPage">

    <section class="admin__main">
        <div class="admin__messages">
            <h2 class="admin__messages--heading">Вы действительно хотите удалить направление: <span><?=$destination['cat_name']?></span></h2>
            
            <div class="admin__messages--button__box">
                <a href="<?=HOST?>destinations" class="admin__messages--button__link--back">Назад</a>
                <a href="<?=HOST?>destination-delete?action=delete&id=<?=$destination['id']?>" class="admin__messages--button__link--delete">Удалить</a>
            </div>
        </div>
    </section>
</main>