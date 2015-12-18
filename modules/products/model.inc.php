<?php
class Products_Model extends Model {

    public static function GetProducts($category ="",$page = 2, $count = 4){
        if($category == ""){
            $str = "";
        }else{
            $str = "WHERE category_id =". $category;
        }
        $from = $page*$count-4;
        $sth = Core::$DB->prepare("SELECT * FROM products $str  ORDER BY products.id desc LIMIT $from,$count");
       
        $sth->execute();
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
    public static function  GetAllProducts(){
       $sth = Core::$DB->prepare("SELECT * FROM products");
       
        $sth->execute();
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function GetCountProducts($category = 2){
        if($category == ""){
            $str = "";
        }else{
            $str = "WHERE category_id =". $category;
        }
        $from = $page*$count;
        $sth = Core::$DB->prepare("SELECT COUNT(*) FROM products $str ");
       
        $sth->execute();
        return $sth->fetchColumn();
    }
    public static function GetSearchProducts($str){
         
        $sth = Core::$DB->prepare("SELECT * FROM products WHERE name  LIKE '%$str%' ORDER BY products.id desc");
        $sth->execute();
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
    public static function GetProductById($id){
        $sth = Core::$DB->prepare("SELECT * FROM products WHERE id=$id");
        $sth->execute();
        return $sth->fetch(PDO::FETCH_ASSOC);
    }
    public static function GetCartProducts($ids){
        $s = implode(",", $ids);
        $sth = Core::$DB->prepare("SELECT * FROM products WHERE id IN  ($s)");
        $sth->execute();
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
    public static function UpdateProduct($data, $id){
        return parent::Update($data, 'products', 'id', $id);
    }
    public static function InsertProduct($data){
        return parent::Insert($data, 'products', $indexFieldName);
    }
    public static function DeleteProduct($id){
        return parent::Delete('products', 'id', $id);
    }

    public static function GetPriceById($id){
        $sth = Core::$DB->prepare("SELECT price FROM products WHERE id=$id");
        $sth->execute();
        return $sth->fetch();
    }

}

