package backend;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.*;


@WebServlet("/RegisterNow")
public class RegisterNow extends HttpServlet {
	Connection cone;
	Statement stmnt;
	String dbstr="jdbc:sqlserver://localhost:1433;databaseName=Term3DB;user=test1java;password=nav1234";
       
   
    public RegisterNow() {
        super();
        
    }

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String a=request.getParameter("name");
		String b=request.getParameter("mr");
		String name=b+a;
		String age=request.getParameter("age");
		String gender=request.getParameter("gender");
		String course=request.getParameter("Course"); 
		String score=request.getParameter("Percentage");
		
		String board=request.getParameter("Board");
		String year=request.getParameter("Year");
		String number=request.getParameter("number");
		
		String address=request.getParameter("Address");
	
		try(PrintWriter out=response.getWriter())
		{
			out.println("<h1>Registered Successfully  "+name+",</h1>");
			out.println("<body style='color:black;background-size:cover;background-repeat:no-repeat;background-attachment:fixed;background:url(\"https://assets.entrepreneur.com/content/3x2/2000/20141031174145-15-free-online-learning-sites.jpeg\")'>");
			out.println("<a href='Homepage.html'>Click Here... to go back home</a><br>");
		try 
			{
				System.out.println("ready");
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				System.out.println("done");
				cone=DriverManager.getConnection(dbstr);
				stmnt=cone.createStatement();
				String queri="insert into Student_Details values('"+name+"','"+age+"','"+gender+"','"+course+"','"+score+"','"+board+"','"+year+"','"+number+"','"+address+"');";
				stmnt.execute(queri);
				System.out.println("INSERTED SUCCESSFULLY to Student Details");
				String qu="SELECT Stu_Id, Stu_Name from Student_Details where Stu_Name='"+name+"'";
				ResultSet res=stmnt.executeQuery(qu);
				while(res.next())
				{
					String x=res.getString("Stu_Id");
					String y=res.getString("Stu_Name");
					String qe="INSERT into Stu_login values('"+x+"','"+y+"')";
					stmnt.execute(qe);
					System.out.println("INSERTED SUCCESSFULLY to Student Login");
					out.println("The login Details are ID:"+x+"  Password:"+x);
				}
				
			}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
