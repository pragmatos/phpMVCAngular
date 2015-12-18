<?php
  class Cart_View extends View
  {
     
      public static function GetPanel(){
          $tpl = new Template();
          $items = Category_Model::GetCategories();
          $tpl->SetParam('cart', $_SESSION['cart']);
          return $tpl->Fetch('templates/cart/cart-panel.tpl');
      }
      public static function GetPageCart(){
          $tpl = new Template();
          if(isset($_SESSION['cart']))
          $items = Products_Model::GetCartProducts(array_keys($_SESSION['cart']['products_id']));
          $tpl->SetParam('products',$items);
          return $tpl->Fetch('templates/cart/cart.tpl');
      }
      public static function GetOkPage(){
          $tpl = new Template();
          return $tpl->Fetch('templates/cart/succes.tpl');;
      }
  }
?>