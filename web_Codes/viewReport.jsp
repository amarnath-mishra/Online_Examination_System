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

        <li><a href="#">Report Card</a></li>
        <li><a href="examiner_register.jsp"> Create Account</a></li>
        <li><a href="index.jsp">Login</a></li>
      </ul>
    </nav>
  </header>
  <h1>Question-Paper</h1>
  <form action="LogOut" method="post" >
    <table align="center">
      <%@ page import="java.util.*" %>
      <%@ page import="bean.ExamDetail" %>
      <%@ page import ="bean.Data "%>
      <%@ page import="bean.ReportList" %>
      <% //new java.util.Date() %>
      <tr><td></td>
        <div align="right";margin-right:200px;><input type ="submit" name ="take2" value="Log Out"></div></tr>

    </table>
  </form>


  <form action="HandleExam1" method="post">
    <%
      Data exd ;

      String name = (String)(session.getAttribute("name"));

      ArrayList<ReportList> books;

      books = (ArrayList<ReportList>) session.getAttribute("results");

      Iterator it = books.iterator();
      String temp;
      ReportList pb = null;
      while (it.hasNext()) {
        pb = (ReportList) it.next();
        temp =Integer.toString(pb.getid());
    %>
    <hr>
    <div align="center">
      <% out.println("<tr><h3><span style=\"color:blue;\">Username=--></span> " + name+"\n"+ "</h3></tr>");
           out.println("<tr><h3><span style=\"color:blue;\">Exam id=--></span> " + pb.getExamId()+"\n"+ "</h3></tr>");


        out.println("<tr><br></tr>");

        out.println("<tr><h4><span style=\"color:red;\">score =</span> " + pb.getTotal()+ "</h4></tr>");


      }
        /*Data dt= new Data();
        dt.seti(pb.getquesid());
        session.setAttribute("maxi",dt);
        // out.println(pb.getquesid());*/
      %>
    </div>
  </form>

  <hr>
  <footer>
    <p>Copyright 2016 Amarnath Mishra</p>
  </footer>

</div>
</body>
</html>