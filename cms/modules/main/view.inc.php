<?php
  class Main_View extends View
  {
      public static function GetMainPage()
      {
        $tpl = new Template();
        return $tpl->Fetch('templates/main/main.tpl');
      }
  }
?>