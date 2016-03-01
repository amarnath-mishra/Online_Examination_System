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
	
	/*  // Create cookies for user name.      
   Cookie userName = new Cookie("user",
 			  request.getParameter("user"));

   // Add both the cookies in the response header.
   response.addCookie(userName);*/

	   while(result.next())
	   {
		   a= result.getString("uname");
		   c= result.getString("password");	   
		   if(a.equals(d))
		   {
			   if(g.equals(c))
			   {
				   /*HttpSession session = getSession(false);
				   if(session == null){
					   session = request.getSession();
				   }else{
					    session.invalidate();
						session = request.getSession();
				   }*/
				   session.setAttribute( "user_name", d);
				   session.setAttribute("refresh_count","2");
			// New location to be redirected
   String site = new String("users.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", site); 		
			   } 
			   
		   }
		 
	   }
	   connect.close();
	out.println("invalid user name or password");
	
</body>
</html>
