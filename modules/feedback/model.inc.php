<?php
  class Feedback_Model extends Model
  {      
      public static function InsertToFeedback($data){
         return parent::Insert($data, 'feedback', $indexFieldName);
      }
       public static function DeleteFeedback($id){
        return parent::Delete('feedback', 'id', $id);
    }
      public static function GetAllFeedback(){
       $sth = Core::$DB->prepare("SELECT * FROM feedback ");
        $sth->execute();
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
    public static function GetAllProducts($keys){
       $sth = Core::$DB->prepare("SELECT name, id  FROM products WHERE id IN ($keys) ");
        $sth->execute();
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
  }
?>