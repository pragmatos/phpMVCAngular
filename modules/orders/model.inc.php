<?php
  class Orders_Model extends Model
  {      
      public static function InsertToOrders($data){
         return parent::Insert($data, 'orders', $indexFieldName);
      }
      
      public static function GetAllOrders(){
       $sth = Core::$DB->prepare("SELECT users.name,users.id AS user_id , products, orders.id, made, date  "
               . "FROM orders JOIN users ON users.id = orders.user_id");
        $sth->execute();
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
    public static function UpdateOrder($data, $id){
        $sth = Core::$DB->prepare("UPDATE orders SET made = $data WHERE id = $id");
        $sth->execute();
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
    public static function DeleteOrder($id){
        return parent::Delete('orders', 'id', $id);
    }

    public static function GetAllProducts($keys){
       $sth = Core::$DB->prepare("SELECT name, id  FROM products WHERE id IN ($keys) ");
        $sth->execute();
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
  }
?>