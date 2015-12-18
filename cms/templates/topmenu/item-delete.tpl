<form method="post">
<input type="hidden" name="confirm" value="yes" />
<div class="alert alert-error">
 Пункт меню "<strong><? echo $item_title;?></strong>" будет удален. Подтверждаете?<br />
</div>
 <button type="submit" class="btn btn-primary">Да</button>  
 <a class="btn" onclick="history.back();">Нет</a>
</form>