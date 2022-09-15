<main class="adminPage">
<section class="admin__main">
            <div class="admin__messages">
                <div class="justify-content-sb">
                    <h2 class="admin__messages--heading">Переходы в мессенджеры</h2>
                </div>

                <?php if(empty($messendgers)): ?>

                <p class="admin__nothing--else__matters">Тут пока ничего нет...</p>

                <?php else: ?>

                <table class="admin__messages--inbox">
                    <tr class="admin__messages--inbox__heading">
                        <th class="admin__messages--inbox__heading--title">Дата и время</th>
                        <th class="admin__messages--inbox__heading--title">Мессенджер</th>
                        <th class="admin__messages--inbox__heading--title">Источник</th>
                        <th class="admin__messages--inbox__heading--title">Поисковой ключ</th>
                        <th class="admin__messages--inbox__heading--title"></th>
                    </tr>

                    <?php foreach($messendgers as $messendger): ?>
                        <tr class="admin__messages--inbox__message">
                        <td><?=$messendger['time']?></td>
                        <td><?=$messendger['button']?></td>
                        <td><?=$messendger['source']?></td>
                    <?php $keywordShort = mb_substr($messendger['keyword'], 0, 20); ?>
                        <td><?=$keywordShort?><?php echo strlen($messendger['keyword']) > strlen($keywordShort) ? '...' : ''; ?></td>
                        
                        <td><a href="<?=HOST?>messendger-stats?action=delete&id=<?=$messendger['id']?>">Удалить</a></td>
                        </tr>
                    <?php endforeach; ?>
                    
                </table>
                <?php endif; ?>
                
            </div>
        </section>
    </main>