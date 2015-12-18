<form method="post">
<table>
  <tr>
    <td>Login:</td>
    <td><input type="text" name="login" /></td>
  </tr>
  <tr>
    <td>Password:</td>
    <td><input type="password" name="password" /></td>
  </tr>
  <tr>
    <td>Password (repeat):</td>
    <td><input type="password" name="password2" /></td>
  </tr>
  <tr>
    <td>First Name:</td>
    <td><input type="text" name="firstname" /></td>
  </tr>
  <tr>
    <td>Last Name:</td>
    <td><input type="text" name="lastname" /></td>
  </tr>
  <tr>
    <td>Gender:</td>
    <td>
      <?= Utils::GetRadioButtons('gender', array('m' => 'male', 'f' => 'female'))?>
    </td>
  </tr>
  <tr>
    <td>City:</td>
    <td>
      <input type="text" name="city" />
    </td>
  </tr>
  <tr>
    <td></td>
    <td><button>Register</button></td>
  </tr>
</table>
</form>