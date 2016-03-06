
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration Page</title>
  </head>
<body>
  <div align="center">
    <p><img src="IIITGLogo.jpg" width="201" height="192" alt=""/></p>
    <p><b>Online Exam System</b></p>
    <h3> Welcome Examinees please fill all fields to register </h3>
  </div>
<div align = "center">
  <form action ="ValidateRegister" method ="POST">
    <table>
      <tr>
        <td>Username:</td>
        <td><input type="text" id="username" name ="username"></td>
      </tr>

    <tr>
      <td>Password:</td>
      <td><input type="password" id="pass" name ="pass"></td>
    </tr>

    <tr>
      <td> First Name : <input type ="text"  name="firstName" size="20" > </td>
      <td>Middle Name : <input type ="text" name="middleName" size="20" ></td>
      <td>Last Name : <input type ="text" name="lastName" size="20" > <br></td>
    </tr>
      <tr>
        <td>Email Address : <input type ="email" name="emailid" > </td>
      </tr>
      <tr>
        <td>Address : <input type ="text"  name="Address" size="20" > <br></td>
      </tr>
      <tr>
        <td>Mobile number : <input type ="number" name="mb" size="10"></td>
      </tr>

    <tr>
      <td></td>
      <td><input type="submit" value="Register"></td>
      <td></td>
    </tr>
  </table>

</form>
</div>
</body>
</html>
