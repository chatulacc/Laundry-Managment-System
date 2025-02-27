package LMS_Package;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class packageDelete
 */
public class packageDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String companyName = request.getParameter("companyName");//meke balnne
		
		boolean isTrue;
		
		isTrue = package_DBUtil.packageDelete(companyName);
		
		if ( isTrue == true) {
			RequestDispatcher rd = request.getRequestDispatcher("packDetails.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd1 = request.getRequestDispatcher("Unsuccess.jsp");
			rd1.forward(request, response);
		}
		
		
		
		/*doGet(request, response);*/
	}

}
