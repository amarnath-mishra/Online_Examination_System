
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>LOG IN page</title>
</head>
<body>
<div align="center">
  <p><img src="IIITGLogo.jpg" width="201" height="192" alt=""/></p>

<p><b>Online Exam System</b></p>
<h3>Welcome Examinees please login first </h3>
</div>
<script type="text/javascript">
  function validateUsername(){
    var text = document.getElementById("username").value;
    if(text == ""){
      document.getElementById("errorusername").innerHTML = "Provide Username";
      document.getElementById("errorusername").style.color = "red";
    }
    else{
      document.getElementById("errorusername").innerHTML = "OK";
      document.getElementById("errorusername").style.color = "green";
    }
  }
  function validatePassword(){
    var text = document.getElementById("pass").value;
    if(text == ""){
      document.getElementById("errorpassword").innerHTML = "Provide Password";
      document.getElementById("errorpassword").style.color = "red";
    }
    else{
      document.getElementById("errorpassword").innerHTML = "OK";
      document.getElementById("errorpassword").style.color = "green";
    }
  }
</script>
<div align="center">
<form action ="ValidateLogin" method ="POST">
  <table>
    <tr>
      <td>Username:</td>
      <td><input type="text" id="username" name ="username" onblur="validateUsername()""></td>
      <td><label id="errorusername"></label></td>
    </tr>

    <tr>
      <td>Password:</td>
      <td><input type="password" id="pass" name ="pass" onblur="validatePassword()""></td>
      <td><label id="errorpassword"></label></td>
    </tr>

    <tr>
      <td></td>
      <td><input type="submit" value="Login"></td>
      <td></td>
    </tr>


    <tr>

      <td colspan="2" align="center"><a href="register.jsp">REGISTER</a></td>
    </tr>

  </table>
  <p2><p2<i>Click on register<i><p2> if you are a <b>first</b> time user</p2>
</form>
  </div>
</body>
</html>
