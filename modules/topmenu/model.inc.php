<?php
  class Topmenu_Model extends Model
  {      
      public static function GetMenuItems()
      {
         $sth = Core::$DB->prepare("SELECT * FROM topmenu ORDER BY item_position ASC");
         $sth->execute();
         $rows = array();
         while($row = $sth->fetch())
            $rows []= $row; 
         return $rows;
      }
      public static function GetMenuItemById($id)
      {
         $sth = Core::$DB->prepare("SELECT * FROM topmenu WHERE item_id = :id");
         $sth->bindValue('id', $id);
         $sth->execute();
         $row = $sth->fetch();
         return $row;
      }
      public static function UpdateItem($id)
      {
        $setArray = array();
        foreach($row as $key => $value)
            $setArray [] = "$key = '{$value}'";
        $setString = implode(',', $setArray);
        $sth = Core::$DB->prepare("UPDATE topmenu SET {$setString} WHERE item_id = :id");
        $sth->bindValue('id', $id);
        $sth->execute(); 
      }
  }
?>