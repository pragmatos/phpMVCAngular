<div class="well">
<ul class="nav nav-list">
  <li class="nav-header">Страницы сайта</li>
      <? foreach($pages as $value) : ?>
          <? if ($_SESSION['user']['user_access'] != 'a') : ?>
          <li><a href="/pages/view/<? echo $value['page_id'];?>"><i class="icon-book"></i> <? echo $value['page_title'];?></a></li>
          <? else : ?>
          <li class="dropdown"><a  class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="icon-book"></i><? echo $value['page_title'];?> <b class="caret"></b></a>
           <ul class="dropdown-menu">
            <li><a href="/pages/view/<? echo $value['page_id'];?>"><i class="icon-hand-up"></i> Перейти</a></li>
            <li><a href="/pages/edit/<? echo $value['page_id'];?>"><i class="icon-pencil"></i> Редактировать</a></li>
            <li><a href="/pages/delete/<? echo $value['page_id'];?>"><i class="icon-trash"></i> Удалить</a></li>
           </ul>
          </li>          
          <? endif; ?>      
      <? endforeach; ?>
      <? if ($_SESSION['user']['user_access'] == 'a') : ?>
      <li><a href="/pages/add" class="admin-link">Добавить</a></li>
      <? endif; ?>
    </ul>
</div>