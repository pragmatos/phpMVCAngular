<?php

class Products_View extends View{

    public static function GetProductsPage($arr = null,$count,$id){
        $tpl = new Template();
        
        $tpl->SetParam('products', $arr);
        $tpl->SetParam('countProducts', $count);
        $tpl->SetParam('category_id', $id);
        return $tpl->Fetch('templates/products/products.tpl');
    }
    public static function GetPagination($c,$v){
        $tpl = new Template();
        $tpl->SetParam('count', $c);
        $tpl->SetParam('category_id', $v);
        return $tpl->Fetch('templates/products/pagination.tpl');
    }
    public static function GetSearchPage($arr = null){
        $tpl = new Template();
        
        $tpl->SetParam('products', $arr);
        return $tpl->Fetch('templates/products/products.tpl');
    }
    public static function GetProductPage($arr = null){
        $tpl = new Template();
        $tpl->SetParam('product', $arr);
        return $tpl->Fetch('templates/products/product-detail.tpl');
    }
}
