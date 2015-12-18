<?php
   class Admin_Controller extends Controller{
       
       public function IndexAction(){
           $res['Title'] = 'Корзина';
           if(isset($_SESSION['user'])){
               if(isset($_SESSION['cart'])){
                $res['Content'] = Cart_View::GetPageCart();
               return $res;    }
           }
           else{
            header("Location: /users/auth");
           }
           
       }
       public function AddAction($route){
          if(isset($route[0])){
           if ($_SERVER['REQUEST_METHOD'] == 'POST'){
               $s = Products_Model::GetProductById ($route[0]);
               if(isset($_SESSION['cart'])){
                    if(in_array($s['id'], $_SESSION['cart']['products_id']));
                                   
               }
               $_SESSION['cart']['products_id'][$s['id']]+=1;// $s['id'];
               $_SESSION['cart']['count'] += 1;
               $_SESSION['cart']['price'] += $s['price'];
               header("Location: ".$_SERVER['HTTP_REFERER']);
               die;
           }
           if ($_SERVER['REQUEST_METHOD'] == 'GET')
               header("Location: /");
          }          
       }
       public function DeleteAction($route){
           if ($_SERVER['REQUEST_METHOD'] == 'GET'){
               $t = Products_Model::GetProductById ($route[0]);
               $s = $_SESSION['cart']['products_id'][$route[0]];
               $_SESSION['cart']['count'] -=$s; 
               $_SESSION['cart']['price'] -=$t['price']*$s;
               unset($_SESSION['cart']['products_id'][$route[0]]);
               header("Location: ".$_SERVER['HTTP_REFERER']);
               die;
           }
       }
       public function OrderAction(){
           if ($_SERVER['REQUEST_METHOD'] == 'POST'){
               $data['user_id']= $_SESSION['user']['id'];
               foreach ($_SESSION['cart']['products_id'] as $id=>$count){
                   $data['product_id'] = $id;
                   $data['count'] = $count;
                   Orders_Model::InsertToOrders($data);
               }
               
               $res['Content'] = Cart_View::GetOkPage();
               unset($_SESSION['cart']);
               return $res;
           }
            header("Location: ".$_SERVER['HTTP_REFERER']);
               die;
           
       }
   }
?>