<main class="adminPage">

    <section class="admin__main">
        <div class="admin__messages">
            <h2 class="admin__messages--heading">Сообщение от: <span><?=$message['name']?></span></h2>
            <p class="admin__messages--single__row">Дата: <span><?=$dateTime[0]?></span></p>
            <p class="admin__messages--single__row">Время: <span><?=$dateTime[1]?></span></p>
            <p class="admin__messages--single__row">Телефон: <a href="https://wa.me/<?=$message['phone']?>"><?=$message['phone']?></a></p>

            <?php if(!empty($message['email'])): ?>
                <p class="admin__messages--single__row">Email: <a href="mailto:<?=$message['email']?>"><?=$message['email']?></a></p>
            <?php endif; ?>
            <?php if(!empty($message['selected_tour'])): ?>
                <p class="admin__messages--single__row">Выбранная экскурсия: <span><?=$message['selected_tour']?></span></p>
            <?php endif; ?>
            <p class="admin__messages--single__row">Сообщение:</p>
            <p class="admin__messages--single__row"><span><?=$message['message']?></span></p>
            <div class="admin__messages--button__box">
                <a href="<?=HOST?>messages" class="admin__messages--button__link--back">Назад</a>
                <a href="<?=HOST?>delete-message?action=delete&id=<?=$message['id']?>" class="admin__messages--button__link--delete">Удалить</a>
            </div>
        </div>
    </section>
</main>