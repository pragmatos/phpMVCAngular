<?php
  class Pages_Model extends Model
  {
     public static function GetPages()
     {
         return self::GetAllRecords('pages');
     } 
     public static function PageAdd($assocArr)
     {
         return parent::Insert($assocArr, 'pages', 'page_id');
     }
     public static function GetPageById($id)
     {
         return parent::GetRecordById('pages', 'page_id', $id);
     }
  }
?>