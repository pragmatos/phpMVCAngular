<form method="post">
  <? if (strlen($Message) > 0) : ?>
  <div class="alert alert-block"><?=$Message ?></div>
  <? endif; ?>
<table>
 <tr><td>Название :</td>
 <td><input type="text" name="item_title" value="<?=$item_title?>"/></td>
 </tr>
 <tr><td>Ссылка :</td>
 <td><input type="text" name="item_link" value="<?=$item_link?>"/></td>
 </tr>
 <tr>
 <td></td>
 <td><button type="submit" class="btn btn-primary">Сохранить</button></td>
 </tr>
</table>
</form>