<?php


$pageTitle = 'Добавление отзыва';

include ROOT . 'libs/resize-and-crop.php';

$destinations = R::getAll('SELECT * FROM alltours');




if (isset($_POST['submit'])){

    

    
    if (empty($_POST['review_name'])){
        $_SESSION['errors'][] = ['title' => 'Необходимо ввести назывние экскурсии'];
    }
    if (empty($_POST['review'])){
        $_SESSION['errosrs'][] = ['title' => 'Необходимо указать направление экскурсии'];
    }

    if (empty($_SESSION['errors'])){

        $newReview = R::dispense('reviews');

        $newReview->name = $_POST['review_name'];
        $newReview->review = $_POST['review'];
        $newReview->date = time();

        // Many-to-many relation to 'alltours' DB
        if(!empty($_POST['destination'])){
            $tourDispense = R::dispense('alltours');
            foreach ($_POST['destination'] as $tourSelection) {
                $selectedTour = R::findOne('alltours', 'id = ?', [$tourSelection]);
                $tourDispense->id = $selectedTour['id'];
                $newReview->sharedAlltoursList[] = $selectedTour;                   
            }
        }

        // Cover Upload
        if (isset($_FILES['review_photo']['name']) && $_FILES['review_photo']['tmp_name'] != ''){

            $fileName =     $_FILES['review_photo']['name'];
            $fileTmpLoc =   $_FILES['review_photo']['tmp_name'];
            $fileType =     $_FILES['review_photo']['type'];
            $fileSize =     $_FILES['review_photo']['size'];
            $fileErrMsg =   $_FILES['review_photo']['error'];

            $kaboom = explode(".", $fileName);
            $fileExt = end($kaboom);

            list($width, $height) = getimagesize($fileTmpLoc);
            if ($width < 100 || $height < 100){
                
                $_SESSION['errors'][] = [   'title' => 'Разрешение загружаемой фотографии слишком мало.', 
                                            'desc' => 'Выберите другую фотографию с разрешением минимально 160 х 160 px.'];
            }
            if ($fileSize > 12582912){
                $_SESSION['errors'][] = [   'title' => 'Размер загружаемой фотографии слишком большой.', 
                                            'desc' => 'В целях экономии места выберите фотографию с объемом не более 12mb.'];
            }
            if (!preg_match("/\.(gif|jpg|jpeg|png)$/i", $fileName)){
                $_SESSION['errors'][] = [   'title' => 'Неверный формат файла.', 
                                            'desc' => 'Формат фотографии должен быть .gif, .jpg, .jpeg или .png.'];
            }
            if ($fileErrMsg == 1) {
                $_SESSION['errors'][] = [   'title' => 'При загрузке фотографии произошла ошибка. Попробуйте позже.', 
                                            'desc' => 'Если ошибка появляется снова - обратитесь в службу поддержки.'];
            }
            

            if (empty($_SESSION['errors'])){
                
                /* Deleting of old avatar */
                
                $coverFolderLoc = ROOT . "img/userContent/avatars/";

                /* Generating name for file and upload */
                $dbFileName = rand(1000000, 9999999) . "." . $fileExt;
                $uploadFile = $coverFolderLoc . $dbFileName;

                
                /* Resizing and croping */
                $result = resize_and_crop($fileTmpLoc, $uploadFile, 160, 160);
                if ( $result != true){
                    $_SESSION['errors'][] = [   'title' => 'Ошибка масштабирования изображения.', 
                                                'desc' => 'Функция resize_and_crop возвращает значение false.'];
                } else {
                    $newReview->avatar = $dbFileName;
                }
                
            }
        }
        
        // Visibility check box
        if (isset($_POST['visibility'])){
            $newReview->visible = 1;
        } else {
            $newReview->visible = 0;
        }


        $savingResult = R::store($newReview);

        if ($savingResult){
            $_SESSION['success'][] = ['title' => 'Новый отзыв успешно сохранен'];
            header("Location: " . HOST . "reviews");
        } else {
            $_SESSION['errors'][] = ['title' => 'Что-то пошло не так'];
        }
    }
}

// Буферизация вывода
ob_start();
include ROOT . 'templates/admin/reviews/review-add.tpl';
$content = ob_get_contents();
ob_end_clean();


include ROOT . 'templates/_parts/_head.tpl';

include ROOT . 'templates/_parts/_sidebar.tpl';
echo $content;

include ROOT . 'templates/_parts/_foot.tpl';

$_SESSION['errors'] = array();
$_SESSION['success'] = array();