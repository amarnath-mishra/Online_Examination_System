<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <title>Online Examination System </title>
  <link href="styles/main.css" rel="stylesheet" type="text/css">
  <script>var __adobewebfontsappname__="dreamweaver"</script><script src="http://use.edgefonts.net/source-sans-pro:n6:default.js" type="text/javascript"></script>

</head>

<body>

<div id="wrapper">
  <header id="top">
    <img src="IIITGLogo.jpg" style="float:left;  height:80px;width:100px; margin-left:0px;margin-top:0px;">
    <h1>Online Examination System</h1>
    <nav id="mainnav">
      <ul>
        <li><a href="indexExaminer.jsp" class="thispage">Home</a></li>

        <li method ="POST"><a href="ShowExamDirect">See Exams</a></li>

        <li><a href="#">Report Card</a></li>
        <li><a href="register.jsp"> Create Account</a></li>
        <li><a href="indexExaminer.jsp">Login</a></li>
      </ul>
    </nav>
  </header>

<div align="center">
  <p><img src="IIITGLogo.jpg" width="201" height="192" alt=""/></p>
  <p><b>Online Exam System</b></p>
  <h3> Welcome Admin please fill all entries to create a exam </h3>
</div>
<div align = "center">
  <form action ="CreateNewExam" method ="POST">
    <table>
      <tr>
        <td>Examname:</td>
        <td><input type="text" required="required" id="examname" name ="examname"></td>
      </tr>

      <tr>
        <td>Department:</td>
        <td><input type="text" id="department" required="required" name ="department"></td>
      </tr>

      <tr>
        <td> Subject1 : <input type ="text"  name="sub1" required="required" size="20" > </td>

        <td>Subject2 : <input type ="text" name="sub2" required="required" size="20" > <br></td>
        <td>Subject3 : <input type ="text" name="sub3" required="required" size="20" > <br></td>
      </tr>

      <tr>
        <td>Total : <input type ="number" name="total" required="required" size="11"></td>
      </tr>
      <tr>
        <td>Difficulty Level(0-5) : <input type ="number" name="level" required="required" size="11"></td>
      </tr>
      <tr>
        <td>Time(hours) : <input type ="number" name="time"  size="11"></td>
      </tr>

      <tr>
        <td></td>
        <td><input type="submit" value="CreateExam"></td>
        <td></td>
      </tr>
    </table>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

  </form>
</div>
  <footer>
    <p>Copyright 2016 Amarnath Mishra</p>
  </footer>
</div>
</body>
</html>
