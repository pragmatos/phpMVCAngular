<?php
  class Category_Model extends Model
  {      
      public static function GetCategories()
      {
        $sth = Core::$DB->prepare("SELECT * FROM category");
        $sth->execute();
        return $sth->fetchAll(PDO::FETCH_ASSOC);
      }
      public static function GetCategoryById($id)
      {
         $sth = Core::$DB->prepare("SELECT * FROM category WHERE id=$id");
        $sth->execute();
        return $sth->fetch(PDO::FETCH_ASSOC);
      }
      public static function UpdateCategory($data,$id)
      {
          return parent::Update($data, 'category', 'id', $id);
      }
      public static function CreateCategory($data)
      {
          return parent::Insert($data, 'category');
      }
      public static function DeleteCategory($id)
      {
          return parent::Delete('category', 'id', $id);
      }
  }
?>