<?php
   class Topmenu_Controller extends Controller
   {
       public function DeleteAction($route)
       {
           $id = (int)$route[0];
           $res = array( 'Title' => 'Удаление пункта меню',
                         'PageTitle' => 'Удаление пункта меню');
           $params = array();
           if ($_SERVER['REQUEST_METHOD'] == 'POST')
           {              
               Topmenu_Model::Delete('topmenu', 'item_id', $id);
               header("Location: /topmenu/delete/ok");               
           } else
           {
               if ($route[0] == 'ok')
               {
               $res['Content'] = Topmenu_View::GetDeleteOkPage();    
               } else          
               if (!empty($id))
               { 
                  $row = Topmenu_Model::GetMenuItemById($id);
                  $res['Content'] = Topmenu_View::GetDeletePage($id, array_merge($row, $params));
               }
           }
           return $res;          
       }
       public function AddAction($route)
       {
           $id = (int)$route[0];
           $res = array( 'Title' => 'Добавление пункта меню',
                         'PageTitle' => 'Добавление пункта меню');
           $params = array();
           if ($_SERVER['REQUEST_METHOD'] == 'POST')
           {
               $fields = array('item_title', 'item_link');
               $rows = Utils::ArrayFilter($_POST, $fields);
               Topmenu_Model::Insert($_POST, 'topmenu', 'item_id');
               $params['Message'] = 'Данные успешно сохранены';
           }           
           $res['Content'] = Topmenu_View::GetEditPage($id, $params);
           return $res;           
       }
       public function EditAction($route) 
       {
           $id = (int)$route[0];
           $res = array( 'Title' => 'Редактирование пункта меню',
                         'PageTitle' => 'Редактирование пункта меню');
           $params = array();
           if ($_SERVER['REQUEST_METHOD'] == 'POST')
           {
               $fields = array('item_title', 'item_link');
               $rows = Utils::ArrayFilter($_POST, $fields);
               Topmenu_Model::Update($_POST, 'topmenu', 'item_id', $id);
               $params['Message'] = 'Данные успешно сохранены';
           }           
           if (!empty($id))
           { 
              $res['Content'] = Topmenu_View::GetEditPage($id, $params);
           }
           return $res;
       }
   }
?>