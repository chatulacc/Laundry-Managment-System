package LMS_Package;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class packageRead
 */
public class packageRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String compName = request.getParameter("name"); //text box name
		
		try {
			ArrayList<laundry_Package> showDetails = package_DBUtil.validate(compName);
			request.setAttribute("showDetails", showDetails);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("packDetails.jsp");
		rd.forward(request, response);
		/*doGet(request, response);*/
	}

}
