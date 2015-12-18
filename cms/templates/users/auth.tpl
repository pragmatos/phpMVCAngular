<form method="post" action="/users/auth" class="form-horizontal well">
  <? if (strlen($Error) > 0) : ?>
  <div class="alert alert-error"><?=$Error ?></div>
  <? endif; ?>
  <div class="control-group">
    <label class="control-label" for="inputLogin">Логин:</label>
    <div class="controls">
      <input type="text" id="inputLogin" name="login" placeholder="e-mail" />
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="inputPassword">Пароль:</label>
    <div class="controls">
      <input type="password" id="inputPassword" name="password" placeholder="пароль" />
    </div>
  </div>
  <div class="control-group">
    <div class="controls">
      <label class="checkbox"><input type="checkbox" /> Запомнить меня</label>
    </div>
  </div>
  <div class="control-group">
    <div class="controls">
      <button type="submit" class="btn btn-primary">Войти</button> <a href="/users/remind" class="btn">Напомнить пароль</a>
    </div>
  </div>   
</form>