<?php
   class Users_Controller extends Controller
   {
       
      public function RegisterAction($route)
      {
          $resArr = array();
          $error = "";
          $resArr['Title'] = 'Регистрация';
          if ($_SERVER['REQUEST_METHOD'] == 'POST')
          {
              if(Users_Model::GetUserLogin($_POST['login'])){
                        $error .="Пользователь с логином {". $_POST['login']."} существует!";
                        $resArr['Content'] = Users_View::GetRegisterForm($error);
                      return $resArr;
              }
                      
              if($_POST['password'] == $_POST['password2'] &&$_POST['password']!=""){
                  if($_POST['name'] == '' || $_POST['email'] == '' ){
                      
                      $error .= 'Не все поля заполнены!';
                      $resArr['Content'] = Users_View::GetRegisterForm($error);
                      return $resArr;
                      
                  }
                  else{
                      unset($_POST['password2']);
                      $user= $_POST;
                      $user['id'] = Users_Model::UserAdd($_POST);
                      Core::$user->Auth($user);
                      header("Location: /");
                      die;
              }}
              else{
                  $error = "Повторите пароли!";
                  $resArr['Content'] = Users_View::GetRegisterForm($error);
                  return $resArr;
              }
              
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
          Core::$user->logout();
          header("Location: /");
          die;
      }
      public function ProfileAction($route)
      {                          
         if ($_SERVER['REQUEST_METHOD'] == 'POST')
         {
             $fields = array('name', 'email', 'city');
             $passOld = $_POST['password_old'];
             $passNew1 = $_POST['password'];
             $passNew2 = $_POST['password2'];
             //print_r($_POST);
             $tplData['Message'] = 'Изменения сохранены';
             if (!empty($passOld))
             {
                $userInfo = Users_Model::GetUserById($_SESSION['user']['id']);
                
                if ($userInfo['password'] == $passOld)
                {
                    if ($passNew1 == $passNew2)
                        $fields []= 'password';  
                    else
                        $tplData['Message'] = "Новые пароли не совпадают!";
                } else
                  $tplData['Message'] = "Старый пароль введен неправильно!";
             }
             $row = Utils::ArrayFilter($_POST, $fields);
             Users_Model::UserEdit($row, $_SESSION['user']['id']);             
         }                                                 
         $resArr['Title'] = 'Редактирование профиля';
         $resArr['Content'] = Users_View::GetProfilePage($tplData);
         return $resArr; 
      }    
      public function AuthadminAction($route)
      {
          if ($_SERVER['REQUEST_METHOD'] == 'POST'){
              $data = json_decode(file_get_contents("php://input"), true);
              $res = Users_Model::UserAuth($data['login'], $data['password']);
              if(Core::$user->isAdmin()){
                  echo json_encode($_SESSION['user']);die;
              }              
            if($res['Status'] == 1){
                echo json_encode($res);die;
            }
            if($res['Status'] == 0){
                echo json_encode($res);die;
            }
          }
      } 
      public function CheckauthAction($route)
      {
          if(Core::$user->isAdmin()){
                  echo json_encode($_SESSION['user']);die;
          }else {
              echo false;die;
          }      
      }
      public function AuthAction($route)
      {
            if (Core::$user->isUser())
            {
                header('Location: /users/profile');
                die;
            }
            if ($_SERVER['REQUEST_METHOD'] == 'POST')
                $res = Users_Model::UserAuth($_POST['login'], $_POST['password']);
            if($res['Status'] == 1){
                header('Location: /');
                die;
            }
            $resArr = array();
            $resArr['Title'] = 'Аутентификация';
            $resArr['PageTitle'] = 'Вход на сайт';
            $resArr['Content'] = Users_View::GetAuth($res);
            return $resArr;
      } 
      public function FeedbackAction(){
            
          if ($_SERVER['REQUEST_METHOD'] == 'POST')
         {
            Feedback_Model::InsertToFeedback($_POST);
              header('Location: /');
                die;
                 
         }                                                 
         $resArr['Title'] = 'Обратная связь';
         $resArr['Content'] = Users_View::GetFeedbackPage();
         return $resArr; 
      }
   }
?>