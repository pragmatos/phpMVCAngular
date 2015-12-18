<?php
  class Pages_Controller
  {
      public function IndexAction()
      {          
          $res = array('Title' => 'Список страниц', 'PageTitle' => 'Список страниц');
          $res['Content'] = Pages_View::GetPagesList();
          return $res;
      }
      public function ViewAction($route)
      {
          $id = (int)$route[0];
          $page = Pages_Model::GetPageById($id);
          $res = array('Title' => $page['page_title'], 'PageTitle' => $page['page_title']);
          $res['Content'] = Pages_View::GetPageView($id);
          return $res;
      }
      public function AddAction()
      {
          $fields = array('page_title', 'page_text', 'page_display_in_menu');
          if ($_SERVER['REQUEST_METHOD'] == 'POST')
          {
              if (empty($_POST['page_display_in_menu']))
                $_POST['page_display_in_menu'] = 'n';
              $rows = Utils::ArrayFilter($_POST, $fields);
              $id = Pages_Model::PageAdd($rows);
              header("Location: /pages/view/{$id}");
          }
          $res = array('Title' => 'Добавление страницы', 'PageTitle' => 'Добавление страницы');
          $res['Content'] = Pages_View::GetAddPage();
          return $res;         
      }
  }
?>