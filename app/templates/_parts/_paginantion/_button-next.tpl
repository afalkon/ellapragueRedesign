<?php if ( $pagination['pageNumber'] != $pagination['numberOfPages']): ?>
        <li class="pagination__li"><a href="?page=<?php echo $pagination['numberOfPages']; ?>" class="pagination__link">>></a></li>
<?php endif; ?>