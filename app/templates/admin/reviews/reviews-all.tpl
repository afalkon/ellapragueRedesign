<main class="adminPage">
<section class="admin__main">
            <div class="admin__messages">
                <div class="justify-content-sb">
                    <h2 class="admin__messages--heading">Все экскурсии</h2>
                    <a href="<?=HOST?>review-add" class="admin__messages--button__link--back">Добавить</a>
                </div>
                
                <?php if(empty($allReviews)): ?>

                <p class="admin__nothing--else__matters">Тут пока ничего нет...</p>

                <?php else: ?>
                <table class="admin__messages--inbox">
                    <tr class="admin__messages--inbox__heading">
                        <th class="admin__messages--inbox__heading--title">Фото</th>
                        <th class="admin__messages--inbox__heading--title">Имя</th>
                        <th class="admin__messages--inbox__heading--title">Отзыв</th>
                        <th class="admin__messages--inbox__heading--title"></th>
                        <th class="admin__messages--inbox__heading--title"></th>
                        <th class="admin__messages--inbox__heading--title"></th>
                    </tr>
                    
                    <?php foreach($allReviews as $review): ?>
                    <?php $reviewShort = mb_substr($review['review'], 0, 30); ?>
                        <tr class="admin__messages--inbox__message" <?php echo $review['unread'] == 1 ? 'style="background-color: #f2f0f0;"' : ''; ?>>
                        <?php if(!empty($review['avatar'])): ?>
                            <td>
                                <a href="<?=HOST?>review-edit?edit=true&id=<?=$review['id']?>">
                                    <div class="admin__review--avatar" style="background-image: url('<?=HOST?>img/userContent/avatars/<?=$review['avatar']?>')"></div>
                                </a>
                            </td>
                        <?php else: ?>
                            <td>
                                <a href="<?=HOST?>review-edit?edit=true&id=<?=$review['id']?>">
                                    <div class="admin__review--avatar" style="background-image: url('<?=HOST?>img/userContent/avatars/no-avatar.png')"></div>
                                </a>
                            </td>
                        <?php endif; ?>
                        <td><a href="<?=HOST?>review-edit?edit=true&id=<?=$review['id']?>"><?=$review['name']?></a></td>
                        <td><a href="<?=HOST?>review-edit?edit=true&id=<?=$review['id']?>"><?=$reviewShort?><?php echo strlen($review['review']) > strlen($reviewShort) ? '...' : ''; ?></a></td>
                        <?php if($review['visible'] == 1): ?>
                            <td>
                                <a href="<?=HOST?>review-edit?edit=true&id=<?=$review['id']?>">
                                    <div class="admin__visibility--check" style="background-image: url('<?HOST?>img/mainContent/checkmark.svg');"></div>
                                </a>
                            </td>
                        <?php else: ?>
                            <td>
                                <a href="<?=HOST?>review-edit?edit=true&id=<?=$review['id']?>">
                                    <div class="admin__visibility--check" style="background-image: url('<?HOST?>img/mainContent/cross.svg');"></div>
                                </a>
                            </td>
                        <?php endif; ?>
                        <td><a href="<?=HOST?>review-edit?edit=true&id=<?=$review['id']?>">Редактировать</a></td>
                        
                        <td><a href="<?=HOST?>review-delete?id=<?=$review['id']?>">Удалить</a></td>
                        </tr>
                    <?php endforeach; ?>
                    
                </table>
                <?php endif; ?>
                
            </div>
        </section>
    </main>