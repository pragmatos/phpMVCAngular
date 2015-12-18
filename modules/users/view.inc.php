<?php
  class Users_View extends View
  {
      public static function GetRegisterForm($error='')
      {
          $tpl = new Template();
          $tpl->SetParam('Error', $error);
          return $tpl->Fetch('templates/users/register.tpl');
      }
      
      public static function GetPanel()
      {
          $tpl = new Template();
          if (!isset($_SESSION['user']))              
            $html = $tpl->Fetch('templates/users/auth-panel.tpl');
          else
            $html = $tpl->Fetch('templates/users/user-panel.tpl');
          return $html; 
      }
      public static function GetAuth($assocArr = null)
      {
          $tpl = new Template();
          $tpl->SetParams($assocArr);
          //if (!isset($_SESSION['user']))              
          return $tpl->Fetch('templates/users/auth.tpl');                    
      }
      public static function GetProfilePage($assocArr = null)
      {
          $tpl = new Template();
          $tpl->SetParams($assocArr);
          $userInfo = Users_Model::GetUserById($_SESSION['user']['id']);
          $tpl->SetParams($userInfo);
          return $tpl->Fetch('templates/users/user-profile.tpl');                              
      }
      public static function GetFeedbackPage($assocArr = null)
      {
          $tpl = new Template();
          
          return $tpl->Fetch('templates/users/feedback.tpl');                              
      }
  }
?>