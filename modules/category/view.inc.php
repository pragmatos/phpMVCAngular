<?php
  class Category_View extends View
  {
     
      public static function GetPanel()
      {
          $tpl = new Template();
          $items = Category_Model::GetCategories();
          $tpl->SetParam('category', $items);
          return $tpl->Fetch('templates/category/category-panel.tpl');
      }
      
      public static function GetCategoryName($id){
          $tpl = new Template();
          $item = Category_Model::GetCategoryById($id);
          return $item['name'];
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