<h1 class="has_background">Авторизация</h1>

<div class="login_box rc5">
<?=$Error?> 
    <div class="form wide">
        <form id="user-login-form" action="/users/auth" method="post">
<!--            <div style="display:none">
                <input type="hidden" value="00eddbe94506466bcfaed12c47ce419f4907f1da" name="YII_CSRF_TOKEN" />
            </div>-->
            <div class="row">
		<label for="login" class="required">Логин <span class="required">*</span></label>		
                <input name="login" value="<?=$_POST['login']?>" type="text" placeholder="Логин"/>		
            </div>

            <div class="row">
                <label for="password" class="required">Пароль <span class="required">*</span>
                </label>			
                <input name="password"  type="password" placeholder="password" />		
            </div>


<!--		<div class="row">
			<label for="UserLoginForm_rememberMe">Запомнить меня</label>		
                        <input id="ytUserLoginForm_rememberMe" type="hidden" value="0" name="UserLoginForm[rememberMe]" />
                        <input name="UserLoginForm[rememberMe]" id="UserLoginForm_rememberMe" value="1" type="checkbox" />		</div>-->

            <div class="row buttons">
                    <input type="submit" class="blue_button" value="Вход">
            </div>

            <div class="row buttons">
                    <a href="/users/register">Регистрация</a><br>
            </div>
        </form>	
        
    </div>
</div>