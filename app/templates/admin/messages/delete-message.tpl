<main class="adminPage">

    <section class="admin__main">
        <div class="admin__messages">
            <h2 class="admin__messages--heading">Вы действительно хотите удалить сообщение от: <span><?=$message['name']?></span></h2>
            
            <div class="admin__messages--button__box">
                <a href="<?=HOST?>destinations?id=<?=$message['id']?>" class="admin__messages--button__link--back">Назад</a>
                <a href="<?=HOST?>delete-message?action=delete&id=<?=$message['id']?>&permition=true" class="admin__messages--button__link--delete">Удалить</a>
            </div>
        </div>
    </section>
</main>