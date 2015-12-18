	
<h1 class="has_background">Обратная связь</h1>

<div class="login_box rc5">
	<div class="form wide">
		<form id="user-register-form" action="/users/feedback" method="post">

		
		<div class="row">
			<label for="login" class="required">Имя <span class="required">*</span></label>
                        <input name="name" id="Username" type="text" maxlength="255" value="<?=$_POST['login']?>" />		</div>

		<div class="row">
			<label for="password" class="required">email <span class="required">*</span></label>
                        <input name="email" id="User_password" type="text" maxlength="255" value="" />		</div>
                <div class="row">
			<label for="password" class="required">phone<span class="required">*</span></label>
                        <input name="phone" id="User_password" type="text" maxlength="255" value="" />		</div>
		<div class="row">
			<label for="email" class="required">Text <span class="required"></span></label>		
                        <textarea name="text"></textarea>

		
		

		<?=$Error?>

			
		
		<div class="row buttons">
			<input type="submit" value="Отправить" />		</div>

		
			

		</form>	</div><!-- form -->
                <?php echo $this->err;?>
</div>
</div>