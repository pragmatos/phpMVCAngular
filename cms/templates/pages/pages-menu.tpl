    <ul class="nav-list">
      <? foreach($items as $value) : ?>
          <? if ($_SESSION['user']['user_access'] != 'a') : ?>
          <li><a href="<? echo $value['item_link'];?>"><? echo $value['item_title'];?></a></li>
          <? else : ?>
          <li class="dropdown"><a  class="dropdown-toggle" data-toggle="dropdown" href="#"><? echo $value['item_title'];?> <b class="caret"></b></a>
           <ul class="dropdown-menu">
            <li><a href="<? echo $value['item_link'];?>"><i class="icon-hand-up"></i> Перейти</a></li>
            <li><a href="/topmenu/edit/<? echo $value['item_id'];?>"><i class="icon-pencil"></i> Редактировать</a></li>
            <li><a href="/topmenu/delete/<? echo $value['item_id'];?>"><i class="icon-trash"></i> Удалить</a></li>
           </ul>
          </li>          
          <? endif; ?>      
      <? endforeach; ?>
      <? if ($_SESSION['user']['user_access'] == 'a') : ?>
      <li><a href="/topmenu/add" class="admin-link">Добавить</a></li>
      <? endif; ?>
    </ul>