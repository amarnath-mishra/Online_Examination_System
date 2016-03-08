
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DatabaseConnection{

    public Statement stmt;
    public ResultSet res;
    public Connection conn;
    public PreparedStatement insert;


    public DatabaseConnection(){

    }

    @SuppressWarnings("CallToThreadDumpStack")
    public Connection setConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/dbms?user=root&password=amarnath");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return conn;
    }
    public ResultSet getResult(String query, Connection conn)
    {
        this.conn = conn;
        try{
            stmt = conn.createStatement();
            res = stmt.executeQuery(query);
        }
        catch(Exception e)
        {
        }
        return res;
    }
    public void setvalue(int ID,int username,String pass,Connection conn,String query)
    {
        this.conn = conn;
        try{
            insert=conn.prepareStatement(query);
            insert.setInt(1,ID);
            insert.setInt(2, username);
            insert.setString(3,pass);
            insert.executeUpdate();
        }
        catch(Exception e)
        {
        }

    }
    public void setvalue2(int ID1,int ID2,int ID3,String date,Connection conn,String query)
    {
        this.conn = conn;
        try{
            insert=conn.prepareStatement(query);
            insert.setInt(1,ID1);
            insert.setInt(2,ID2);
            insert.setInt(3,ID3);
            insert.setString(4,date);
            insert.executeUpdate();
        }
        catch(Exception e)
        {
        }

    }
    public void setvalue3(int ID,String title,String author,String publi,int quantity,int price,String image,Connection conn,String query)
    {
        this.conn = conn;
        try{
            insert=conn.prepareStatement(query);
            insert.setInt(1,ID);
            insert.setString(2, title);
            insert.setString(3,author);
            insert.setString(4,publi);
            insert.setInt(5,price);
            insert.setInt(6,quantity);
            insert.setString(7,image);
            insert.executeUpdate();
        }
        catch(Exception e)
        {
        }

    }

}