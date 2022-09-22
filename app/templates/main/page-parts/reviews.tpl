    <section id="reviews" class="reviewTop">
    <h2 class="invisible-heading">Отзывы - индивидуальный гид в Праге и Чехии на русском языке</h2>
        <div class="container">
            <h3 class="section__heading"><?=$reviewsScreenText['reviews_main_heading']?></h3>
        </div>
    </section>
    <section class="reviewBottom">
    <h2 class="invisible-heading">Отзывы - индивидуальный гид в Праге и Чехии на русском языке</h2>
        <div class="container">
            <div class="reviewBottom__slider">

            <?php foreach($reviews as $review): ?>
                <div class="reviewBottom__slide">
                    <div class="reviewBottom__slide--photo"
                        style="background-image: url('<?=HOST?>img/userContent/avatars/<?=$review['avatar']?>');"></div>
                    <div class="reviewBottom__slide--name"><?=$review['name']?></div>


                    <?php $reviewShort = mb_substr($review['review'], 0, 300) ?>
                    <p class="reviewBottom__slide--text"><?=$reviewShort?><?php echo strlen($review['review']) > strlen($reviewShort) ? '...' : ''; ?></p>



                    <div class="reviewBottom__slide--date"><?=rus_date("F Y", $review['date'])?></div>

                    <?php $reviewDestinations = R::load('reviews', $review['id']); ?>
                    
                    <?php $alltours_reviews = $reviewDestinations->sharedAlltoursList; ?>
                        <?php if(!empty($alltours_reviews)): ?>
                            <?php foreach($alltours_reviews as $dest): ?>
                                <div class="reviewBottom__slide--tour"><?=$dest['tourname']?></div>
                            <?php endforeach; ?>
                        <?php endif; ?>
                </div>
            <?php endforeach; ?>
               
            </div>
        </div>
    </section>