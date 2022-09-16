    <section class="mainScreen" style="background-image: url('<?=HOST?>img/mainContent/mainScreenBg.jpg');">
        <div class="container">
            <header class="header">
                <a href="<?=HOST?>" class="header__logo">
                    <p class="header__logo--name"><?=$mainScreenText['logo_name']?></p>
                    <p class="header__logo--desc"><?=$mainScreenText['logo_desc']?></p>
                </a>
                <nav class="header__menu">
                    <ul class="header__menu--ul">
                        <li class="header__menu--li"><a href="<?=$navLink['header_first']['link']?>" class="header__menu--link"><?=$navLink['header_first']['linkName']?></a></li>
                        <li class="header__menu--li"><a href="<?=$navLink['header_second']['link']?>" class="header__menu--link"><?=$navLink['header_second']['linkName']?></a></li>
                        <li class="header__menu--li"><a href="<?=$navLink['header_third']['link']?>" class="header__menu--link"><?=$navLink['header_third']['linkName']?></a></li>
                        <li class="header__menu--li"><a href="<?=$navLink['header_fourth']['link']?>" class="header__menu--link"><?=$navLink['header_fourth']['linkName']?></a></li>
                    </ul>
                </nav>
                <div class="header__phone">
                    <a href="<?=HOST?>messendger?target=telegram" class="header__phone--social"
                        style="background-image: url('img/mainContent/telegramIcon.svg');"></a>
                    <a href="<?=HOST?>messendger?target=whatsapp" class="header__phone--social"
                        style="background-image: url('img/mainContent/whatsappIcon.svg');"></a>
                    <a href="<?=HOST?>messendger?target=viber" class="header__phone--social"
                        style="background-image: url('img/mainContent/viberIcon.svg');"></a>
                    <form action="" class="header__phone--form">
                        <a href="<?=$navLink['header_phone']['link']?>" class="header__phone--number">+420 777 655 867</a>
                    </form>
                </div>
                <div class="header__burger"><span></span></div>
            </header>
            <h1 class="mainScreen__heading"><?=$mainScreenText['main_heading']?></h1>
            <a href="#contacts" class="mainScreen__button">Напишите мне</a>
        </div>
    </section>