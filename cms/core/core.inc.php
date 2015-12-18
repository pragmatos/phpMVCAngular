<?php
  class Core
  {
      public static $DB;
      protected static $IndexTPL;
      public static function Init()
      {
         session_start(); 
         self::$IndexTPL = new Template();
         self::$IndexTPL->SetParams($GLOBALS['SiteParams']);
         self::$DB = new PDO("mysql:host=".MYSQL_SERVER.";dbname=".MYSQL_DATABASE, MYSQL_USER, MYSQL_PASS);
      }
      public static function Run()
      {
          $route = $_GET['route'];
          $routeParts = explode('/', $route);
          $methodName = "IndexAction";
          if (strlen(trim($routeParts[0])) == 0)
                $className = "Main_Controller";
          else
                $className = ucfirst($routeParts[0])."_Controller";         
          $methodNameCandidate = trim($routeParts[1]);          
          if (!empty($methodNameCandidate))
            $methodName = ucfirst($methodNameCandidate)."Action";
          array_shift($routeParts);
          array_shift($routeParts);      
          if (class_exists($className))
          {
            $obj = new $className();
            if (method_exists($obj, $methodName))
            {
                $res = $obj->$methodName($routeParts);
                self::$IndexTPL->SetParams($res);
            }
            else        
                self::Error(404);
          } else
            self::Error(404);
          
      }
      public static function Error($code)
      {
         $tpl = new Template();                
         if ($code == 404)
            self::$IndexTPL->SetParam('Content', $tpl->Fetch('templates/main/error404.tpl'));
      }     
      public static function Done()
      {
          self::$IndexTPL->Display('templates/index.tpl');
      }      
  }
  class Model {
        public function Delete($tableName, $indexFieldName, $indexFieldValue)
        {
            $sth = Core::$DB->prepare("DELETE FROM {$tableName} WHERE {$indexFieldName} = :id");
            $sth->bindValue('id', $indexFieldValue);
            $sth->execute();
        }
        public function Update($assocArray, $tableName, $indexFieldName, $indexFieldValue)
        {
            $setArray = array();
            foreach($assocArray as $key => $value)
                $setArray [] = "$key = '{$value}'";
            $setString = implode(',', $setArray);
            $sth = Core::$DB->prepare("UPDATE {$tableName} SET {$setString} WHERE {$indexFieldName} = :id");
            $sth->bindValue('id', $indexFieldValue);
            $sth->execute();  
        }
        public function GetAllRecords($table)
        {
           $sth = Core::$DB->prepare("SELECT * FROM {$table}");
           $sth->execute();
           $rows = array();
           while($row = $sth->fetch())
            $rows []= $row;
           return $rows;
        }
        public function GetRecordById($table, $fieldName, $value)
        {
           $sth = Core::$DB->prepare("SELECT * FROM {$table} WHERE {$fieldName} = :val");
           $sth->bindParam('val', $value);
           $sth->execute();
           return $sth->fetch();
        }
        public function Insert($assocArray, $tableName, $indexFieldName)
        {
            $fieldsArray = array_keys($assocArray);
            $valuesArray = array_values($assocArray);
            $fields = implode(",", $fieldsArray);
            $values = "'".implode("','", $valuesArray)."'";
            $sth = Core::$DB->prepare("INSERT INTO {$tableName} ({$fields}) VALUES ($values)");
            $sth->execute(); 
            return Core::$DB->lastInsertId(); 
        }
  }
  class Controller {
      
  }
  class View {
      
  }
?>