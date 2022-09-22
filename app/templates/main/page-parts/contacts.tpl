    <div id="contacts" class="contacts" style="background-image: url(img/mainContent/contactsBg.jpg);">
        <div class="container">
            <h2 class="contacts__heading"><?=$contactsScreenText['contacts_main_heading']?></h2>
            <p class="contacts__desc"><?=$contactsScreenText['contacts_main_desc']?></p>

            <?php include_once ROOT . 'templates/components/errors.tpl'; ?>
            <?php include_once ROOT . 'templates/components/success.tpl'; ?>
            

            <form action="<?=HOST?>#contacts" id="contactform" class="contacts__form" method="POST">

            <?php if(!empty($_POST['name'])): ?>
                <input type="text" name="name" class="contacts__form--input" value="<?=$_POST['name']?>">
            <?php else: ?>
                <input type="text" name="name" class="contacts__form--input" placeholder="Ваше имя">
            <?php endif; ?>

            <?php if(!empty($_POST['email'])): ?>
                <input type="text" name="email" class="contacts__form--input" value="<?=$_POST['email']?>">
            <?php else: ?>
                <input type="text" name="email" class="contacts__form--input" placeholder="Ваш Email">
            <?php endif; ?>

            <?php if(!empty($_POST['phone'])): ?>
                <input type="text" name="phone" class="contacts__form--input" value="<?=$_POST['phone']?>">
            <?php else: ?>
                <input type="text" name="phone" class="contacts__form--input" placeholder="Телефон (WhatsApp/Viber/Telegram)">
            <?php endif; ?>

            <?php if(!empty($_POST['text'])): ?>
                <textarea id="contacts__form--text" class="contacts__form--text" name="text" onkeyup="javascript:keycount();"><?=$_POST['text']?></textarea>
            <?php else: ?>
                <textarea id="contacts__form--text" class="contacts__form--text" name="text" onkeyup="javascript:keycount();"
                    placeholder="Укажите желаемые даты и интересующие Вас экскурсии."></textarea>
            <?php endif; ?>

            <?php if(!empty($_POST['keyUpCount'])):?>
                <input type="hidden" id="keyUpCount" name="keyUpCount" value="<?=$_POST['keyUpCount']?>">
            <?php else: ?>
                <input type="hidden" id="keyUpCount" name="keyUpCount" value="0">
            <?php endif; ?>
                    
                    <script>
                        var ct = 0;
      
                        function keycount(){
                            document.getElementById('keyUpCount').value = ++ct;
                        }
                    </script>

            <?php if(!empty($_POST['selectedTour'])): ?>
                <input id="contactsTourSelection" type="hidden" name="selectedTour" value="<?=$_POST['selectedTour']?>">
            <?php else: ?>
                <input id="contactsTourSelection" type="hidden" name="selectedTour" value="">
            <?php endif; ?>

                <button type="submit" name="submit" class="contacts__form--submit" onclick="gtag_report_conversion()">Отправить гиду</button>
            </form>
            <div class="contacts__thirdParty"><?=$contactsScreenText['contacts_expl']?></div>
            <p class="contacts__call"><?=$contactsScreenText['contacts_call']?></p>
        </div>
    </div>