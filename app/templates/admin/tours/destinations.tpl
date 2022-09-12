<main class="adminPage">
<section class="admin__main">
            <div class="admin__messages">
                <div class="justify-content-sb">
                    <h2 class="admin__messages--heading">Все направления</h2>
                    <a href="<?=HOST?>destination-add" class="admin__messages--button__link--back">Добавить</a>
                </div>
                <table class="admin__messages--inbox">
                    <tr class="admin__messages--inbox__heading">
                        <th class="admin__messages--inbox__heading--title">Название направления</th>
                        <th class="admin__messages--inbox__heading--title">Заголовок направления</th>
                        <th class="admin__messages--inbox__heading--title"></th>
                        <th class="admin__messages--inbox__heading--title"></th>
                    </tr>

                    <?php foreach($destinations as $destination): ?>
                        <tr class="admin__messages--inbox__message">
                        <td><a href="<?=HOST?>destination-edit?edit=true&id=<?=$destination['id']?>"><?=$destination['cat_name']?></a></td>
                        <td><a href="<?=HOST?>destination-edit?edit=true&id=<?=$destination['id']?>"><?=$destination['cat_heading']?></a></td>
                        <td><a href="<?=HOST?>destination-edit?edit=true&id=<?=$destination['id']?>">Редактировать</a></td>
                        
                        <td><a href="<?=HOST?>destination-delete?id=<?=$destination['id']?>">Удалить</a></td>
                        </tr>
                    <?php endforeach; ?>
                    
                </table>

                
            </div>
        </section>
    </main>