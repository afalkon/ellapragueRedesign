        <section class="sidebar">
            <a href="<?=HOST?>" class="admin__logo">
                <p class="header__logo--name">Ильвира Рахманова</p>
                <p class="header__logo--desc">Лицензированный гид в Праге</p>
            </a>
            <nav class="sidebar__nav">
                <ul class="sidebar__nav--ul">
                    <li class="sidebar__nav--li"><a href="<?=HOST?>admin" class="sidebar__nav--link">Админ панель</a></li>
                    <li class="sidebar__nav--li"><a href="" class="sidebar__nav--link">Настройки аккаунта</a></li>
                    <li class="sidebar__nav--li"><a href="" class="sidebar__nav--link">Правка текстов</a></li>
                    <li class="sidebar__nav--li"><a href="" class="sidebar__nav--link">Правка меню</a></li>
                    <li class="sidebar__nav--li">
                        <a href="<?=HOST?>messages" class="sidebar__nav--link">Сообщения

                        <?php if(!empty($unreadMessagesNum)): ?>
                            <div class="sidebar__nav--highliter"><?=$unreadMessagesNum?></div>
                        <?php endif; ?>

                        </a></li>
                    <li class="sidebar__nav--li"><a href="" class="sidebar__nav--link">Звонки</a></li>
                    <li class="sidebar__nav--li"><a href="" class="sidebar__nav--link">Статистика</a></li>
                    <li class="sidebar__nav--li"><a href="" class="sidebar__nav--link">Отзывы</a></li>
                    <li class="sidebar__nav--li"><a href="<?=HOST?>alltours" class="sidebar__nav--link">Экскурсии</a></li>
                    <li class="sidebar__nav--li"><a href="<?=HOST?>destinations" class="sidebar__nav--link">Направления</a></li>
                    <li class="sidebar__nav--li"><a href="" class="sidebar__nav--link">Выход</a></li>
                </ul>
            </nav>
        </section>