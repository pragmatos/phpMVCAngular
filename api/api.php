<?php
class Api {

    public function auth(){
        return array('name'=>"BAD",'logedIn'=>TRUE) ;
    }
    public function products($id = null){
        if($_SERVER['REQUEST_METHOD'] == "DELETE"){
            return Products_Model::DeleteProduct($id);
        }
        if($_SERVER['REQUEST_METHOD'] == "POST"){
            $data = json_decode(file_get_contents("php://input"), true);
            return Products_Model::InsertProduct($data);
            
        }
        if($_SERVER['REQUEST_METHOD'] == "PUT"){
            $data = json_decode(file_get_contents("php://input"), true);
            return Products_Model::UpdateProduct($data,$id);
        }
        if(isset($id)){
            return Products_Model::GetProductById($id);
        }
        
        return Products_Model::GetAllProducts();
    }
     public function feedback($id = null){
        if($_SERVER['REQUEST_METHOD'] == "DELETE"){
            return Feedback_Model::DeleteFeedback($id);
        }
        if($_SERVER['REQUEST_METHOD'] == "POST"){
            $data = json_decode(file_get_contents("php://input"), true);
            return Products_Model::InsertProduct($data);
            
        }
        if($_SERVER['REQUEST_METHOD'] == "PUT"){
            $data = json_decode(file_get_contents("php://input"), true);
            return Products_Model::UpdateProduct($data,$id);
        }
        if(isset($id)){
            return Products_Model::GetProductById($id);
        }
        
        return Feedback_Model::GetAllFeedback();
    }
    public function categories($id = null) {
        if($_SERVER['REQUEST_METHOD'] == "DELETE"){
            return Category_Model::DeleteCategory($id);
        }
         if($_SERVER['REQUEST_METHOD'] == "POST"){
            $data = json_decode(file_get_contents("php://input"), true);
            return Category_Model::CreateCategory($data);
            
        }
        if($_SERVER['REQUEST_METHOD'] == "PUT"){
            $data = json_decode(file_get_contents("php://input"), true);
            return Category_Model::UpdateCategory($data,$id);
        }
        if(isset($id)){
            return Category_Model::GetCategoryById($id);
        }
        return Category_Model::GetCategories();
    }
    public function users($id = null) {
        if($_SERVER['REQUEST_METHOD'] == "DELETE"){
            return Users_Model::DeleteUser($id);
        }
         if($_SERVER['REQUEST_METHOD'] == "POST"){
            $data = json_decode(file_get_contents("php://input"), true);
            return Users_Model::UserAdd($data);
            
        }
        if($_SERVER['REQUEST_METHOD'] == "PUT"){
            $data = json_decode(file_get_contents("php://input"), true);
            return Users_Model::UpdateUser($data, $id);
        }
        if(isset($id)){
            return Users_Model::GetUserById($id);
        }
        return Users_Model::GetUsers();
    }
    public function orders($id = null) {
        if($_SERVER['REQUEST_METHOD'] == "DELETE"){
            return Orders_Model::DeleteOrder($id);
        }
         
        if($_SERVER['REQUEST_METHOD'] == "PUT"){
            $data = json_decode(file_get_contents("php://input"), true);
            return Orders_Model::UpdateOrder($data, $id);
        }
        if(isset($id)){
            return Users_Model::GetUserById($id);
        }
        $t = Orders_Model::GetAllOrders();
        
        $orders = array();
        foreach ($t as $item){
            array_push($orders, $this->getoneorder($item));
        }
        return $orders;
    }
        private function getoneorder($data){
            $res = array();
            $res['username'] = $data['name'];
            $res['user_id'] = $data['user_id'];
            $t=json_decode($data['products'],TRUE);
            $s = array_keys($t['products_id']);
            $items = Orders_Model::GetAllProducts(implode(',', $s));
            $res['products']['items'] = $items;
             
//$res['products']['items'] = $t;
            $res['products']['count'] = $t['count'];
            $res['products']['price'] = $t['price'];
            $res['made'] = $data['made'];
            $res['date'] = $data['date'];
            $res['id']   = $data['id'];
            return $res;
            //print_r($data);
        } 
        

}