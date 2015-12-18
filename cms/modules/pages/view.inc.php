<?php
  class Pages_View extends View
  {
     public static function GetAddPage()
     {
         $tpl = new Template();
         return $tpl->Fetch('templates/pages/page-edit.tpl');         
     }
     public static function GetPagesList()
     {
         $tpl = new Template();
         $rows = Pages_Model::GetPages();
         $tpl->SetParam('pages', $rows);
         return $tpl->Fetch('templates/pages/pages-list.tpl');
     } 
     public static function GetPageView($id)
     {
         $tpl = new Template();
         $rows = Pages_Model::GetPageById($id);
         $tpl->SetParams($rows);
         return $tpl->Fetch('templates/pages/page-view.tpl');
     } 
     public static function GetPanel()
     {
         $tpl = new Template();         
         $pages = Pages_Model::GetPages();
         $tpl->SetParam('pages', $pages);
         return $tpl->Fetch('templates/pages/pages-block.tpl');
     } 
  }
?>