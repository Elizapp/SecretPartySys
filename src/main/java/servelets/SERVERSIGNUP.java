package servelets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import object.User;

/**
 * Servlet implementation class SERVERSIGNUP
 */
@WebServlet("/SERVERSIGNUP")
public class SERVERSIGNUP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SERVERSIGNUP() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try(PrintWriter out = response.getWriter()){

			
			String firstname , lastname, usertype, birthdate, email, password, street, city, state, zip;

			RequestDispatcher rd = null;
			if(request.getParameter("btnsingup") !=null) {
				firstname = request.getParameter("txtfname");
				lastname = request.getParameter("txtlname");
				usertype = request.getParameter("txttypeuser");
				birthdate = request.getParameter("txtbirthday");
				email = request.getParameter("txtemail");
				password = request.getParameter("txtpassword");
				street = request.getParameter("txtstreet");
				city = request.getParameter("txtcity");
				state = request.getParameter("txtstate");
				zip = request.getParameter("txtzip");
				System.out.println(firstname+" "+lastname+" "+usertype+" "+birthdate+" "+email+" "+password+" "+street+" "+city+" "+state+" "+zip);
				User userac = new User();
				userac.saveuser(firstname, lastname, usertype, birthdate, email, password, street, city, state, zip);
				
				rd = request.getRequestDispatcher("index.jsp?register=successful");
			}
			rd.forward(request, response);
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
