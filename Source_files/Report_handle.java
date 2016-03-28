import bean.Data;
import bean.ExamDetail;
import bean.ReportList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


// This Class is mainly to show all questions from DB , dont go on name
public class Report_handle extends HttpServlet {

    Connection conn;
    DatabaseConnection dbconn;
    String query;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("())text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        Data id =new Data() ;

        id = (Data)req.getSession().getAttribute("Identity");
        int idd =id.geti();
        String Name = (String) req.getSession().getAttribute("name");

        //query = "select * from questions where subject in (\""+exd.getSub1() + "\",\"" + exd.getSub2() + "\",\"" + exd.getSub3() + "\")";
        query ="select * from report where student_id ="+idd;
        dbconn = new DatabaseConnection();
        conn = dbconn.setConnection();
        ResultSet res;
        res = dbconn.getResult(query,conn);
        try {
            req.getSession().setAttribute("results", getResult(res));
        } catch (SQLException e) {
            e.printStackTrace();
        }

        RequestDispatcher rd = req.getRequestDispatcher("viewReport.jsp");/*SEE*/
        rd.forward(req,resp);
        //super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("())text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
       Data id =new Data() ;

        id = (Data)req.getSession().getAttribute("Identity");
        String Name = (String) req.getSession().getAttribute("name");

        //query = "select * from questions where subject in (\""+exd.getSub1() + "\",\"" + exd.getSub2() + "\",\"" + exd.getSub3() + "\")";
        query ="select * from report where student_id ="+id;
        dbconn = new DatabaseConnection();
        conn = dbconn.setConnection();
        ResultSet res;
        res = dbconn.getResult(query,conn);
        try {
            req.getSession().setAttribute("results", getResult(res));
        } catch (SQLException e) {
            e.printStackTrace();
        }

        RequestDispatcher rd = req.getRequestDispatcher("viewReport.jsp");/*SEE*/
        rd.forward(req,resp);
    }

    private ArrayList<ReportList> getResult(ResultSet rs) throws SQLException {
        ArrayList<ReportList> result = new ArrayList<ReportList>();
        while (rs.next()) {
            ReportList ed = new ReportList();
            ed.setid(rs.getInt("student_id"));
            ed.setExamId(rs.getNString("exam_id"));

            ed.setTotal(rs.getInt("score"));

            //int temp = rs.getInt("quantity");
            // ed.setId(temp);
            /*if(temp!=0)
            {
                ed.setQuantity("Available");
            }
            else{
                ed.setQuantity("Not Available");
            }*/
            result.add(ed);
        }

        return result;
    }
}
