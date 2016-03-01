<%@ page import="java.sql.*"%>
<%@ page import="java.lang.*"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title> Online Examination System </title>
<link href="main.css" rel="stylesheet" type="text/css">

</head>
<body>
<% Class.forName("com.mysql.jdbc.Driver");
	  
	 Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/hotel?user=root&password=admin");
	 String a,c;
	 Statement state =connect.createStatement();
	  ResultSet result = state.executeQuery("select uname,password from users");

	String d =request.getParameter("user");	
	String g =request.getParameter("passwd"); 
	
	//session = request.getSession();
	String u_name = (String)session.getAttribute("user_name");
	if("xxx".equals(u_name)){
		out.println("Invalid Session");
	}
	
</body>
</html>
