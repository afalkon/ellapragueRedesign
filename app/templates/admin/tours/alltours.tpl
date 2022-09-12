<main class="adminPage">
<section class="admin__main">
            <div class="admin__messages">
                <div class="justify-content-sb">
                    <h2 class="admin__messages--heading">Все экскурсии</h2>
                    <a href="<?=HOST?>tour-add" class="admin__messages--button__link--back">Добавить</a>
                </div>
                <table class="admin__messages--inbox">
                    <tr class="admin__messages--inbox__heading">
                        <th class="admin__messages--inbox__heading--title">Название экскурсии</th>
                        <th class="admin__messages--inbox__heading--title">Описание</th>
                        <th class="admin__messages--inbox__heading--title"></th>
                        <th class="admin__messages--inbox__heading--title"></th>
                    </tr>

                    <?php foreach($allTours as $tour): ?>
                    <?php $tourNameShort = mb_substr($tour['tourname'], 0, 27); ?>
                    <?php $tourDescShort = mb_substr($tour['tourdesc'], 0, 25); ?>
                        <tr class="admin__messages--inbox__message">
                        <td><a href="<?=HOST?>tour-edit?edit=true&id=<?=$tour['id']?>"><?=$tourNameShort?><?php echo strlen($tour['tourname']) > strlen($tourNameShort) ? '...' : ''; ?></a></td>
                        <td><a href="<?=HOST?>tour-edit?edit=true&id=<?=$tour['id']?>"><?=$tourDescShort?><?php echo strlen($tour['tourdesc']) > strlen($tourNameShort) ? '...' : ''; ?></a></td>
                        <td><a href="<?=HOST?>tour-edit?edit=true&id=<?=$tour['id']?>">Редактировать</a></td>
                        
                        <td><a href="<?=HOST?>tour-delete?id=<?=$tour['id']?>">Удалить</a></td>
                        </tr>
                    <?php endforeach; ?>
                    
                </table>

                
            </div>
        </section>
    </main>