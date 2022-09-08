    <setion id="contacts" class="contacts" style="background-image: url(img/mainContent/contactsBg.jpg);">
        <div class="container">
            <h2 class="contacts__heading"><?=$contactsScreenText['contacts_main_heading']?></h2>
            <p class="contacts__desc"><?=$contactsScreenText['contacts_main_desc']?></p>
            <form action="" class="contacts__form" method="POST">
                <input type="text" name="name" class="contacts__form--input" placeholder="Ваше имя">
                <input type="text" name="email" class="contacts__form--input" placeholder="Ваш Email">
                <input type="text" name="phone" class="contacts__form--input"
                    placeholder="Телефон (WhatsApp/Viber/Telegram)">
                <textarea class="contacts__form--text" name="text"
                    placeholder="Укажите желаемые даты и интересующие Вас экскурсии."></textarea>
                <button type="submit" class="contacts__form--submit">Отправить гиду</button>
            </form>
            <div class="contacts__thirdParty"><?=$contactsScreenText['contacts_expl']?></div>
            <p class="contacts__call"><?=$contactsScreenText['contacts_call']?></p>
        </div>
    </setion>