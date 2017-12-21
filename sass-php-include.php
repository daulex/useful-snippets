<?php
  // SASS parser
  function parse_sass(){
   require_once TEMPLATEPATH."/a/css/scssphp/scss.inc.php";
   $scss = new \Leafo\ScssPhp\Compiler();

   echo $scss->compile('
     $color: #abc;
     div { color: lighten($color, 20%); }
   ');
  }
  
  if(current_user_can("administrator")):
    $cu = wp_get_current_user();
    if($cu && $cu->user_login === "daulex"):
      add_action('get_header', 'parse_sass');
    endif;
  endif;