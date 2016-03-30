<%@ page import="bean.ExamDetail" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="bean.Data" %>
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
        <li><a href="index.jsp" class="thispage">Home</a></li>

        <li method ="POST"><a href="ShowExam">See Exams</a></li>

        <li><a href="Report_handle">Report Card</a></li>
        <li><a href="register.jsp"> Create Account</a></li>
        <li><a href="index.jsp">Login</a></li>
      </ul>
    </nav>
  </header>
     <p>&nbsp;</p>
      <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <div align ="center">
        <%Data dd ;
        dd = (Data)session.getAttribute("SCORE");%>
        <h1>Your Score is <%=dd.geti()  %></h1>
    </div>
         <p>&nbsp;</p>
    <p>&nbsp;</p>
     <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
      <p>&nbsp;</p>
    <p>&nbsp;</p>
  
        
        <footer>
    <p>Copyright 2016 Amarnath Mishra</p>
  </footer>
</div>
        
    </body>
</html>
