	
<h1 class="has_background">Редактирование профиля</h1>

<div class="login_box rc5">
	<div class="form wide">
		<form id="user-register-form" action="/users/profile" method="post">

		
		<div class="row">
			<label for="login" class="required">Логин <span class="required">*</span></label>
                        <input name="login" id="Username" type="text" readonly="readonly" maxlength="255" value="<?=$login?>" />		</div>
                <div class="row">
			<label for="password" class="required">Пароль старый<span class="required">*</span></label>
                        <input name="password_old" id="User_password" type="password" maxlength="255" value="" />		</div>
		<div class="row">
			<label for="password" class="required">Пароль <span class="required">*</span></label>
                        <input name="password" id="User_password" type="password" maxlength="255" value="" />		</div>
                <div class="row">
			<label for="password" class="required">Пароль(повторить)<span class="required">*</span></label>
                        <input name="password2" id="User_password" type="password" maxlength="255" value="" />		</div>
		<div class="row">
			<label for="email" class="required">Email <span class="required"></span></label>		
                        <input name="email" id="User_email" type="text" maxlength="255" value="<?=$email?>" />		</div>

		<div class="row">
			<label for="name" class="required">Имя <span class="required">*</span></label>		
                        <input name="name" id="UserProfile_full_name" type="text" maxlength="255" value="<?=$name?>" />		</div>
                <div class="row">
			<label for="name" class="required">Город <span class="required">*</span></label>		
                        <input name="city" id="UserProfile_full_name" type="text" maxlength="255" value="<?=$city?>" />
<input name="role" id="UserProfile_full_name" type="hidden" maxlength="255" value="user" />		</div>
		

		<?=$Message?>

			
		
		<div class="row buttons">
			<input type="submit" value="Отправить" />		</div>

		<div class="row buttons">
			
			

		</form>	</div><!-- form -->
                
</div>
</div>