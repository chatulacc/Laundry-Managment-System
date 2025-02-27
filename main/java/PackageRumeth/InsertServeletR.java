package PackageRumeth;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/InsertServeletR")
public class InsertServeletR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String orderid = request.getParameter("orderid");
		String complaint = request.getParameter("complaint");
		String contactnumber = request.getParameter("contactnumber");
		String additionalfield = request.getParameter("additionalfield");
		
		
		boolean isSuccess;
		
		isSuccess = RumethDB.insertData(name,orderid,complaint,contactnumber,additionalfield );
		
		if (isSuccess == true) {
			RequestDispatcher dis = request.getRequestDispatcher("ManageComplaintRead.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}
	}

	

}