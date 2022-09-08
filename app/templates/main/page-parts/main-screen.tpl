    <section class="mainScreen" style="background-image: url('<?=HOST?>img/mainContent/mainScreenBg.jpg');">
        <div class="container">
            <header class="header">
                <a href="<?=HOST?>" class="header__logo">
                    <p class="header__logo--name"><?=$mainScreenText['logo_name']?></p>
                    <p class="header__logo--desc"><?=$mainScreenText['logo_desc']?></p>
                </a>
                <nav class="header__menu">
                    <ul class="header__menu--ul">
                        <li class="header__menu--li"><a href="<?=HOST . $navLink['header_first']['link']?>" class="header__menu--link"><?=$navLink['header_first']['linkName']?></a></li>
                        <li class="header__menu--li"><a href="<?=HOST . $navLink['header_second']['link']?>" class="header__menu--link"><?=$navLink['header_second']['linkName']?></a></li>
                        <li class="header__menu--li"><a href="<?=HOST . $navLink['header_third']['link']?>" class="header__menu--link"><?=$navLink['header_third']['linkName']?></a></li>
                        <li class="header__menu--li"><a href="<?=HOST . $navLink['header_fourth']['link']?>" class="header__menu--link"><?=$navLink['header_fourth']['linkName']?></a></li>
                    </ul>
                </nav>
                <div class="header__phone">
                    <a href="tg://resolve?domain=ellaprague" class="header__phone--social"
                        style="background-image: url('img/mainContent/telegramIcon.svg');"></a>
                    <a href="https://wa.me/420777655867" class="header__phone--social"
                        style="background-image: url('img/mainContent/whatsappIcon.svg');"></a>
                    <a href="viber://chat?number=%2B420777655867" class="header__phone--social"
                        style="background-image: url('img/mainContent/viberIcon.svg');"></a>
                    <form action="" class="header__phone--form">
                        <a href="<?=$navLink['header_phone']['link']?>" class="header__phone--number">+420 777 655 867</a>
                    </form>
                </div>
                <div class="header__burger"><span></span></div>
            </header>
            <h1 class="mainScreen__heading"><?=$mainScreenText['main_heading']?></h1>
            <a href="" class="mainScreen__button">Заказать</a>
        </div>
    </section>