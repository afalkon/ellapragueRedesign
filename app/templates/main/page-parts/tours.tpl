    <!--  "Tours" section markup  -->
    <section id="tours" class="tours">
        <div class="container">
            <div class="tours__top">
                <div class="tours__heading--box">
                    <h2 class="section__heading"><?=$tourScreenText['main_heading']?></h2>
                    <p class="section__heading--desc"><?=$tourScreenText['heading_desc']?></p>
                </div>
                <div class="tours__desc--box">
                    <h3 class="tours__desc--heading"><?=$tourScreenText['heading_secondary']?></h3>
                    <p class="tours__desc--text"><?=$tourScreenText['text_desc']?></p>
                </div>
            </div>
        </div>
        <div class="tours__tabs">
            <div class="tours__tabs--top">

            <?php foreach($toursCats as $toursCat): ?>
                <div id="<?=$toursCat['id']?>" class="tours__tabs--button"><?=$toursCat['cat_name']?><span></span></div>
            <?php endforeach; ?>
            </div>
            <div class="tours__tabs--bottom">

            <?php foreach($toursCats as $toursCat): ?>
                <div id="<?=$toursCat['id']?>" class="tours__tab"
                    style="background-image: url('<?=HOST?>img/mainContent/<?=$toursCat['background']?>');">
                    <h3 class="tours__tabs--heading"><?=$toursCat['cat_heading']?></h3>
                    <!--  Slider  -->
                    <div class="container">
                        <div class="tours__tabs--slider">

                        <?php $toursList = getTour($toursCat['id']); ?>
                        <?php foreach($toursList as $tour): ?>
                            <article class="tours__tabs--slide">
                                <h3 class="tours__tabs--slide__heading"><?=$tour['tourname']?></h3>
                                <p class="tours__tabs--slide__type"><?=$tour['tourtype']?></p>
                                <p class="tours__tabs--slide__desc"><?=$tour['tourdesc']?></p>
                                <a href="#contacts" class="tours__tabs--slide__link">Заказать</a>
                            </article>
                        <?php endforeach; ?>

                        </div>
                    </div>
                    <!--  /Slider  -->
                </div>
            <?php endforeach; ?>

            </div>
        </div>
    </section>