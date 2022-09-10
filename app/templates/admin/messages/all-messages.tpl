<main class="adminPage">
<section class="admin__main">
            <div class="admin__messages">
                <h2 class="admin__messages--heading">Сообщения с сайта</h2>
                <table class="admin__messages--inbox">
                    <tr class="admin__messages--inbox__heading">
                        <th class="admin__messages--inbox__heading--title">Имя</th>
                        <th class="admin__messages--inbox__heading--title">Дата</th>
                        <th class="admin__messages--inbox__heading--title">Время</th>
                        <th class="admin__messages--inbox__heading--title">Сообщение</th>
                        <th class="admin__messages--inbox__heading--title"></th>
                    </tr>

                    <?php foreach($messages as $message): ?>
                        <tr class="admin__messages--inbox__message" <?php echo $message['unread'] == 1 ? 'style="background-color: #f2f0f0;"' : ''; ?>>
                        <td><a href="<?=HOST?>messages?id=<?=$message['id']?>"><?=$message['name']?></a></td>

                        <?php $dateTime = explode(' ', $message['datetime']); ?>
                        <?php $messageShort = mb_substr($message['message'], 0, 39); ?>
                        <td><a href="<?=HOST?>messages?id=<?=$message['id']?>"><?=$dateTime[0]?></a></td>
                        <td><a href="<?=HOST?>messages?id=<?=$message['id']?>"><?=$dateTime[1]?></a></td>
                        <td><a href="<?=HOST?>messages?id=<?=$message['id']?>"><?=$messageShort?><?php echo strlen($message['message']) > strlen($messageShort) ? '...' : ''; ?></a></td>
                        <td><a href="<?=HOST?>delete-message?action=delete&id=<?=$message['id']?>">Удалить</a></td>
                        </tr>
                    <?php endforeach; ?>
                    
                </table>

                <nav class="pagination">
                    <ul class="pagination__ul">
                        <?php include ROOT . 'templates/_parts/_paginantion/pagination.tpl'; ?>
                    </ul>
                </nav>

                
            </div>
        </section>
    </main>