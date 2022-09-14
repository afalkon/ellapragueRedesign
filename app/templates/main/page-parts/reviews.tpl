    <section id="reviews" class="reviewTop">
        <div class="container">
            <h2 class="section__heading"><?=$reviewsScreenText['reviews_main_heading']?></h2>
        </div>
    </section>
    <section class="reviewBottom">
        <div class="container">
            <div class="reviewBottom__slider">

            <?php foreach($reviews as $review): ?>
                <div class="reviewBottom__slide">
                    <div class="reviewBottom__slide--photo"
                        style="background-image: url('<?=HOST?>img/userContent/avatars/<?=$review['avatar']?>');"></div>
                    <div class="reviewBottom__slide--name"><?=$review['name']?></div>
                    <p class="reviewBottom__slide--text"><?=$review['review']?></p>
                    <div class="reviewBottom__slide--date"><?=$review['date']?></div>

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