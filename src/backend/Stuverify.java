package backend;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.io.PrintWriter;


/**
 * Servlet implementation class Stuverify
 */
@WebServlet("/Stuverify")
public class Stuverify extends HttpServlet {
	Connection con;
	Statement stmt;
	String dbs="jdbc:sqlserver://localhost:1433;databaseName=Term3DB;user=test1java;password=nav1234";
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Stuverify() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("StuId");
		String pwd=request.getParameter("password");
		try(PrintWriter out=response.getWriter())
		{
			try {
				System.out.println("ready");
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				System.out.println("done");
				con=DriverManager.getConnection(dbs);
				stmt=con.createStatement();
				String query="SELECT * from Stu_login where  Stu_Id='"+id+"';";
				ResultSet r=stmt.executeQuery(query);
				while(r.next())
				{
					String p=r.getString("Pass_Key");
					if(pwd.equals(p))
					{
						r.close();
					
				String str="SELECT * from Stu_login where Stu_Id='"+id+"' and Pass_Key='"+pwd+"' ";
				ResultSet rs=stmt.executeQuery(str);
				
				while(rs.next())
				{
					
						String str1="SELECT * from Student_Details where Stu_ID='"+id+"'";
						ResultSet rs1=stmt.executeQuery(str1);
						
						while(rs1.next())
						{
							String x1=rs1.getString("Stu_ID");
							String y1=rs1.getString("Stu_Name");
							String c1=rs1.getString("Age");
							String v1=rs1.getString("Gender");
							String b=rs1.getString("Course");
							String n=rs1.getString("Score");
							String m=rs1.getString("Board_of_Study");
							String q=rs1.getString("Mobile_Number");
							String resi=rs1.getString("Resi_Add");
							
							System.out.println(x1);
						
							request.setAttribute("Name", y1);
							request.setAttribute("Id", x1);
							request.setAttribute("Age", c1);
							request.setAttribute("Gender", m);
							request.setAttribute("Course", v1);
							request.setAttribute("Score", n);
							request.setAttribute("Board", b);
							request.setAttribute("Mobile", q);
							request.setAttribute("Address", resi);
							
					        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view.jsp");
					 
					        requestDispatcher.forward(request, response);
						
						}
					}	
				}

				else
						
					{
						response.sendRedirect("STD_login.jsp");
					}
				}}
		catch(Exception e) 
			{
				//out.println("<h1 style='text-align: center; padding-top:80px;'>Incoorect Student ID or Password<h1>");
				//out.println("<br><br><br><a href='stud.jsp' style='font-size: 20px;text-align:center; padding-top:40px;'>Back to login page...</a>");
				System.out.println(e);
			}
		}	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
