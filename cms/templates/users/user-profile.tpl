<form method="post">
  <? if (strlen($Message) > 0) : ?>
  <div class="alert alert-block"><?=$Message ?></div>
  <? endif; ?>
<table>
  <tr>
    <td>Login:</td>
    <td><input type="text" name="user_login" readonly="readonly" value="<?=$user_login?>" /></td>
  </tr>
  <tr>
    <td>Password (old):</td>
    <td><input type="password" name="user_password_old" /></td>
  </tr>
  <tr>
    <td>Password (new):</td>
    <td><input type="password" name="user_password" /></td>
  </tr>
  <tr>
    <td>Password (new repeat):</td>
    <td><input type="password" name="user_password2" /></td>
  </tr>
  <tr>
    <td>First Name:</td>
    <td><input type="text" name="user_firstname" value="<?=$user_firstname?>" /></td>
  </tr>
  <tr>
    <td>Last Name:</td>
    <td><input type="text" name="user_lastname" value="<?=$user_lastname?>" /></td>
  </tr>
  <tr>
    <td>Gender:</td>
    <td>
      <?= Utils::GetRadioButtons('user_gender', array('m' => 'male', 'f' => 'female'), $user_gender)?>
    </td>
  </tr>
  <tr>
    <td>City:</td>
    <td>
      <input type="text" name="user_city" value="<?=$user_city?>"/>
    </td>
  </tr>
  <tr>
    <td></td>
    <td><button class="btn btn-primary">Save</button></td>
  </tr>
</table>
</form>