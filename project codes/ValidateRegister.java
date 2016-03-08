

import java.sql.Connection;
import java.sql.ResultSet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ValidateRegister extends HttpServlet {

    Connection conn;
    ResultSet res;

    String username, password, query,query1;
    DatabaseConnection dbconn;
    int store,temp;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("())text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            temp=0;
            username = request.getParameter("username");
            password = request.getParameter("pass");
            temp = Integer.parseInt(username);
            if ((1301000 < temp) && (temp<1301065)){
                query = "select * from admin where username = '" + temp + "' and password = '" + password + "'";
                dbconn = new DatabaseConnection();
                conn = dbconn.setConnection();
                res = dbconn.getResult(query, conn);

                if (res.next()) {
                    out.write("You Are Already Registered");
                } else {
                    query1 = "select max(ID) from admin";
                    res = dbconn.getResult(query1, conn);
                    if (res.next()) {
                        store = res.getInt("max(ID)");
                        store = store + 1;
                    }
                    query = "insert into admin values(?,?,?)";
                    dbconn.setvalue(store, temp, password, conn, query);
                    out.write("You Are Successfully Registered\n");
                    out.write("You Can proceed to LogIn page");
                }
            }
            else{
                out.write("You are not a student of iiitg");
            }
        }
        catch(Exception e){
            RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
            rd.forward(request, response);
        }
        finally{
            out.close();
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
