<main class="adminPage">

    <section class="admin__main">
        <div class="admin__messages">
            <h2 class="admin__messages--heading">Вы действительно хотите удалить экскурсию: <span><?=$tourToDelete['tourname']?></span></h2>
            
            <div class="admin__messages--button__box">
                <a href="<?=HOST?>destinations" class="admin__messages--button__link--back">Назад</a>
                <a href="<?=HOST?>tour-delete?action=delete&id=<?=$tourToDelete['id']?>" class="admin__messages--button__link--delete">Удалить</a>
            </div>
        </div>
    </section>
</main>