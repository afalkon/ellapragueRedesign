    <footer class="footer">
        <div class="container">
            <nav class="footer__nav">
                <li class="footer__nav--li">
                    <a href="<?=HOST . $navLink['footer_first']['link']?>" class="footer__nav--link"><?=$navLink['footer_first']['linkName']?></a>
                </li>
                <li class="footer__nav--li">
                    <a href="<?=HOST . $navLink['footer_second']['link']?>" class="footer__nav--link"><?=$navLink['footer_second']['linkName']?></a>
                </li>
                <li class="footer__nav--li">
                    <a href="<?=HOST . $navLink['footer_third']['link']?>" class="footer__nav--link"><?=$navLink['footer_third']['linkName']?></a>
                </li>

                <?php if(!empty($_SESSION['logged_user'])): ?>
                    
                    <li class="footer__nav--li">
                        <a href="<?=HOST?>admin" class="footer__nav--link"><?=$navLink['footer_fourth']['linkName']?></a>
                    </li>
                <?php else: ?>
                    <li class="footer__nav--li">
                        <a href="<?=HOST . $navLink['footer_fourth']['link']?>" class="footer__nav--link"><?=$navLink['footer_fourth']['linkName']?></a>
                    </li>
                <?php endif; ?>    

            </nav>
            <p class="footer__extensions">© 2018 Русский гид в Праге - Ильвира Рахманова. Все права на тексты и фото
                принадлежат его автору, если не указано иное. Полное использование материалов запрещено. Частичное
                использование разрешено только при наличии активной ссылки на источник. По всем вопросам пишите на
                ellaprague25@gmail.com</p>
            <div class="footer__designBy">Designed by <a href="#" class="footer__disignBy--link">ORBITUS</a></div>
        </div>

    </footer>