<?php
  class Main_Controller extends Controller
  {
      public static function IndexAction()
      {
          $resArr = array();
          $resArr['Content'] = Main_View::GetMainPage();
          return $resArr;
      }
  }
?>
