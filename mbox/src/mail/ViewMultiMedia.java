package mail;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class ViewMultiMedia
 */
@WebServlet("/ViewMultiMedia")
public class ViewMultiMedia extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String file_type="";
	   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewMultiMedia() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("header.jsp").include(request, response);
		PrintWriter pw=response.getWriter();
		pw.print("<br>");
		pw.print("<center>");
		request.getRequestDispatcher("commonbar.jsp").include(request, response);pw.print("</center>");
		String id=request.getParameter("id");
		HttpSession session=request.getSession(false);
		String usrid=(String) session.getAttribute("user_id");
		if(usrid==null){
			response.sendRedirect("SignIn.jsp");
		}
		else{
			pw.print("<span style='float:right'><h3>Hi, "+session.getAttribute("name")+"</h3></span><br><br>");
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/mailbox","root","root");
				Statement stmt=con.createStatement();
				ResultSet rs=stmt.executeQuery("select * from multi_media where receiver='"+usrid+"' And time='"+id+"'");
				
				if(rs.next()){
					pw.println("<html>");
					pw.println("<head>");
					pw.println("<title>");
					pw.println("Message-ChatBox");
					pw.println("</TITLE>");
					pw.print("</head>");
					pw.print("<body  background=\"images/background.jpg\">");
					pw.println("<hr>");
					pw.println("<center>");
					pw.print("<div style=\"background-color:#ebede8;width:100%;\">");
					file_type=rs.getString("data_type");
					pw.print("<h3>Type of file - "+file_type+"</h3><hr>");
					pw.print(" <b>SENDER ID - "+rs.getString("sender")+"</b>");
					pw.println("<hr>");
					pw.println("<a href='view_Data?id="+rs.getString("time")+"'>Click Here TO View File</a>");

					
					
					
					pw.println("<hr>");
					pw.print("</div>");
					pw.println("</center>");
					
					}
				con.close();
	
			}
			catch (Exception e) {
				pw.print(e);
			}
		}
		request.getRequestDispatcher("footer.jsp").include(request, response);
		pw.print("</body>");
		pw.print("</html>");
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);

	}

}
