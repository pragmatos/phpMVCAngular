<?php
  class Topmenu_View extends View
  {
      public static function GetDeleteOkPage()
      {
          $tpl = new Template();
          return $tpl->Fetch('templates/topmenu/menu-delete-ok.tpl');          
      }
      public static function GetPanel()
      {
          $tpl = new Template();
          $items = Topmenu_Model::GetMenuItems();
          $tpl->SetParam('items', $items);
          return $tpl->Fetch('templates/topmenu/menu.tpl');
      }
      public static function GetEditPage($id, $assocArr = null)
      {
          $tpl = new Template();
          $row = Topmenu_Model::GetMenuItemById($id);
          $tpl->SetParams($row);
          $tpl->SetParams($assocArr);
          return $tpl->Fetch('templates/topmenu/item-edit.tpl');
      }
      public static function GetDeletePage($id, $assocArr = null)
      {
          $tpl = new Template();
          $row = Topmenu_Model::GetMenuItemById($id);
          $tpl->SetParams($row);
          $tpl->SetParams($assocArr);
          return $tpl->Fetch('templates/topmenu/item-delete.tpl');
      }
  }
?>