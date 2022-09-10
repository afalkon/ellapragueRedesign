<?php

// Pagination function
function pagination($resultsPerPage, $numberOfResults){
	 // Пагинация

	 if ( !isset($_GET['page'])){
		 $pageNumber = 1;
	 } else {
		 $pageNumber = intval($_GET['page']);
	 }
	 
	 $numberOfPages = ceil($numberOfResults / $resultsPerPage);

	 if ($pageNumber > $numberOfPages){
		$pageNumber = $numberOfPages;
	 }

	 $startingLimitNumber = ($pageNumber - 1) * $resultsPerPage;
 
	 $sqlPageLimit = "LIMIT {$startingLimitNumber}, {$resultsPerPage}";

	 $pagination['numberOfPages'] = $numberOfPages;
	 $pagination['pageNumber'] = $pageNumber;
	 $pagination['sqlPageLimit'] = $sqlPageLimit;

	 return $pagination;
}