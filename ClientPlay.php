<?php
  {
  if (isset($_GET['id'])) 
  $post_id = $_GET['id'];
  $server = 'https://td69movies.epizy.com/nem/play.php?id='.$post_id;
  }

 echo  "<iframe src=\"{$server}\" style=\"background: #fff;\" frameborder=\"0\" height=\"100%\" scrolling=\"auto\" width=\"100%\" allowfullscreen></iframe>";
?>
