package LMS_Package;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class packageUpdate
*/ 
public class packageUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String companyName = request.getParameter("name");//package form eke name
		String packageName = request.getParameter("package");
		String duration = request.getParameter("duration");
		String price = request.getParameter("price");
		
		
		boolean isCorrect;
		
		isCorrect = package_DBUtil.updateData(companyName,packageName,duration,price);
		
		if ( isCorrect == true) {
			RequestDispatcher rd = request.getRequestDispatcher("packDetails.jsp");
			rd.forward(request, response);
		}
		else{
			RequestDispatcher rd = request.getRequestDispatcher("Unsuccess.jsp");
			rd.forward(request, response);
		}
		doGet(request, response);
	}

}
