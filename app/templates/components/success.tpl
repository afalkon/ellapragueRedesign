<?php
if (!empty($_SESSION['success'])) {
    foreach ($_SESSION['success'] as $success){
        if (count($success) == 1){
        ?>
            <div class="successMsg"><?=$success['title']?></div>
        <?php
        } elseif (count($success) == 2){
        ?>
            <div class="successMsg"><?=$success['title']?></div>
        <?php
        }
    }
}
?>