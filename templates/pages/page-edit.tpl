<form class="form-horizontal" method="post">
  <div class="control-group">
    <label class="control-label" for="inputTitle">Заголовок страницы:</label>
    <div class="controls">
      <input type="text" class="span5" name="page_title" placeholder="название" />
    </div>
  </div>
  <div class="control-group">
    <label class="control-label">Текст страницы:</label>
    <div class="controls">
      <textarea type="password" name="page_text" placeholder="текст страницы"></textarea>
    </div>
  </div>
  <div class="control-group">
    <div class="controls">
      <label class="checkbox">
        <input type="checkbox" name="page_display_in_menu" value="y" /> Отображать в меню
      </label>
      <button type="submit" class="btn btn-primary">Сохранить</button>
      <a href="#" onclick="history.back()" class="btn">Отмена</a>
    </div>
  </div>
</form>