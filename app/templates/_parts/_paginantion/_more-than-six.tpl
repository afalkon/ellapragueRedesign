<?php if ($pagination['pageNumber'] - 3 === 1): ?>
    <div class="section-pagination__item">
        <li class="pagination__li"><a href="?page=1" class="pagination__link"></a></li>
    </div>
<?php endif; ?>


<?php if ($pagination['pageNumber'] - 1 > 0): ?>

    <li class="pagination__li"><a href="<?=HOST?>messages?page=<?php echo $pagination['pageNumber'] - 1;?>" class="pagination__link"><?php echo $pagination['pageNumber'] - 1; ?></a></li>

<?php endif; ?>

    <li class="pagination__li"><a href="<?=HOST?>messages?page=1<?=$pagination['pageNumber']?>" class="pagination__link"><?=$pagination['pageNumber']?></a></li>

<?php if ($pagination['pageNumber'] + 1 <= $pagination['numberOfPages']): ?>

<li class="pagination__li"><a href="<?=HOST?>messages?page=<?php echo $pagination['pageNumber'] + 1;?>" class="pagination__link"><?php echo $pagination['pageNumber'] + 1; ?></a></li>

<?php endif; ?>

