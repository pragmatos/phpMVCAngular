<?php
   class Users_Controller extends Controller
   {
       
      public function RegisterAction($route)
      {
          $resArr = array();
          $resArr['Title'] = 'Регистрация';
          if ($_SERVER['REQUEST_METHOD'] == 'POST')
          {
              Users_Model::UserAdd($_POST);
              header("Location: /users/register/ok");
              die;
          }
          if ($_SERVER['REQUEST_METHOD'] == 'GET')
          {
              if ($route[0] == 'ok')
                $resArr['Content'] = Users_View::GetOKRegisterMessage();
              else
                $resArr['Content'] = Users_View::GetRegisterForm();
          }
          return $resArr;
      }
      public function ExitAction()
      {
          unset($_SESSION['user']);
          header("Location: /");
          die;
      }
      public function ProfileAction($route)
      {                          
         if ($_SERVER['REQUEST_METHOD'] == 'POST')
         {
             $fields = array('user_firstname', 'user_lastname', 'user_gender', 'user_city');
             $passOld = $_POST['user_password_old'];
             $passNew1 = $_POST['user_password'];
             $passNew2 = $_POST['user_password2'];
             $tplData = array('Message' => 'Изменения сохранены');
             if (!empty($passOld))
             {
                $userInfo = Users_Model::GetUserById($_SESSION['user']['user_id']);
                if ($userInfo['user_password'] == $passOld)
                {
                    if ($passNew1 == $passNew2)
                        $fields []= 'user_password';  
                    else
                        $tplData['Message'] = "Новые пароли не совпадают!";
                } else
                  $tplData['Message'] = "Старый пароль введен неправильно!";
             }
             $row = Utils::ArrayFilter($_POST, $fields);
             Users_Model::UserEdit($row, $_SESSION['user']['user_id']);             
         }                                                 
         $resArr = array('Title' => 'Редактирование профиля');
         $resArr['Content'] = Users_View::GetProfilePage($tplData);
         return $resArr; 
      }    
      public function IndexAction($route)
      {
          
      } 
      public function AuthAction($route)
      {
            if (isset($_SESSION['user']))
            {
                header('Location: /users/profile');
                die;
            }
            if ($_SERVER['REQUEST_METHOD'] == 'POST')
                $res = Users_Model::UserAuth($_POST['login'], $_POST['password']);
            $resArr = array();
            $resArr['Title'] = 'Аутентификация';
            $resArr['PageTitle'] = 'Вход на сайт';
            $resArr['Content'] = Users_View::GetAuth($res);
            return $resArr;
      } 
   }
?>