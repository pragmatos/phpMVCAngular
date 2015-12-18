<div style="margin-bottom:10px;"><a href="/pages/add" class="btn btn-primary">Добавить страницу</a></div>
<table class="table table-bordered table-condensed">
  <thead>
    <th>Номер</th>
    <th>Название</th>
    <th>В меню?</th>
    <th></th>
    <th></th>
  </thead>
  <? foreach($pages as $value) : ?>
  <tr>
    <td><?=$value['page_id']?></td>
    <td><?=$value['page_title']?></td>
    <td><? if ($value['page_display_in_menu'] == 'y') : ?> <i class="icon-plus"></i><? else : ?> <i class="icon-minus"></i><? endif; ?></td>
    <td><a href="/pages/edit/<?=$value['page_id']?>">редактировать</a></td>
    <td><a href="/pages/delete/<?=$value['page_id']?>">удалить</a></td>
  </tr>
  <? endforeach; ?>
</table>