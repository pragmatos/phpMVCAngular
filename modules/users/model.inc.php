<?php
  class Users_Model extends Model
  {
     public static function GetUserById($id)
     {
         $sth = Core::$DB->prepare("SELECT * FROM users WHERE id = :id");
         $sth->bindParam('id', $id);
         $sth->execute();
         return $sth->fetch(PDO::FETCH_ASSOC);
     }
     public static function GetUsers()
     {
         $sth = Core::$DB->prepare("SELECT * FROM users");
         $sth->execute();
         return $sth->fetchAll(PDO::FETCH_ASSOC);
     }
     public static function UpdateUser($data,$id)
     {
         return parent::Update($data, 'users', 'id', $id);
     }
     public static function DeleteUser($id)
     {
         return parent::Delete('users', 'id', $id);
     }
     public static function GetUserLogin($login){
        return parent::GetRecordById('users', 'login', $login);
     }

     public static function UserAuth($log, $pas)
     {
         $operationResult = array('Status' => 1);
         $sth = Core::$DB->prepare("SELECT * FROM users WHERE login = :log");
         $sth->bindValue('log', $log);
         $sth->execute();
         $user = $sth->fetch(PDO::FETCH_ASSOC);
         if (empty($user))
         {
            $operationResult['Status'] = 0;
            $operationResult['Error'] = "Неправильный логин"; 
         } else
         {
             if ($user['password'] == $pas)
             {
                 Core::$user->Auth($user);
             } else
             {
                  $operationResult['Status'] = 0;
                  $operationResult['Error'] = "Неправильный пароль";
             }
         }         
         return $operationResult;
     }
     public static function UserEdit($row, $id)
     {
        $setArray = array();
        foreach($row as $key => $value)
            $setArray [] = "$key = '{$value}'";
        $setString = implode(',', $setArray);
        $sth = Core::$DB->prepare("UPDATE users SET {$setString} WHERE id = :id");
        $sth->bindValue('id', $id);
        $sth->execute(); 
     }
     public static function UserAdd($row)
     {
          return parent::Insert($row, 'users', 'id');
        
     }
  }
?>