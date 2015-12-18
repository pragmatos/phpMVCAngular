<?php
   class Products_Controller extends Controller
   {
       public function IndexAction($route){
           die;
           print_r($route[0]);
           $data = Products_Model::GetProductById($route[0]);
           $res['Content']=Products_View::GetProductPage($data);
           return $res; 
       }
       public function DetailAction($route){
           $data = Products_Model::GetProductById($route[0]);
           $res['Content']=Products_View::GetProductPage($data);
           return $res; 
       }
       
       public function CategoryAction($route){
           /*
            * route[0] - id_category
            * route[1] - page
            */
           if(isset($route[0])){
               $r = Products_Model::GetCountProducts($route[0]);
               $c = $route[0];
               if(isset($route[1])){
                   $data = Products_Model::GetProducts($route[0],$route[1]);
                   
               }else
               $data = Products_Model::GetProducts($route[0],0);
           }
           else{
               $data = Products_Model::GetProducts(1,0, 3);
               
           }
           $res['Content'] = Products_View::GetProductsPage($data,ceil($r/4),$c);
           return $res;
           
           
       }
       public function SearchAction($search){
           if($_SERVER['REQUEST_METHOD'] == 'POST'){
               $data = Products_Model::GetSearchProducts($_POST['search']);
               $res['Content'] = Products_View::GetProductsPage($data,ceil($r/4),$c);
           return $res;
           }
       }
       
       
       
   }
?>