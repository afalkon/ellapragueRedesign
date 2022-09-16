<?php
if (!empty($_SESSION['errors'])) {
    foreach ($_SESSION['errors'] as $error){
        if (count($error) == 1){
        ?>
            <div class="errorrMsg"><?=$error['title']?></div>
        <?php
        } elseif (count($error) == 2){
        ?>
            <div class="errorrMsg"><?=$error['title']?></div>
        <?php
        }
    }
    $_SESSION['errors'] = array();
}
?>