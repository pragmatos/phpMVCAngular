<?php
  class Users_Model extends Model
  {
     public static function GetUserById($id)
     {
         $sth = Core::$DB->prepare("SELECT * FROM users WHERE user_id = :id");
         $sth->bindParam('id', $id);
         $sth->execute();
         return $sth->fetch();
     }
     public static function UserAuth($log, $pas)
     {
         $operationResult = array('Status' => 1);
         $sth = Core::$DB->prepare("SELECT * FROM users WHERE user_login = :log");
         $sth->bindValue('log', $log);
         $sth->execute();
         $user = $sth->fetch();
         if (empty($user))
         {
            $operationResult['Status'] = 0;
            $operationResult['Error'] = "Неправильный логин"; 
         } else
         {
             if ($user['user_password'] == $pas)
             {
                $_SESSION['user'] = $user;
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
        $sth = Core::$DB->prepare("UPDATE users SET {$setString} WHERE user_id = :id");
        $sth->bindValue('id', $id);
        $sth->execute(); 
     }
     public static function UserAdd($row)
     {
        $fields = array('login', 'password', 'lastname', 'firstname', 'gender', 'city');
        $sth = Core::$DB->prepare("INSERT INTO users (user_login, user_password, user_lastname, user_firstname, user_gender, user_city) VALUES (:login, :password, :lastname, :firstname, :gender, :city)"); 
        foreach($fields as $field)
            if (isset($row[$field]))
              $sth->bindValue($field, $row[$field]);
        $sth->execute();
     }
  }
?>