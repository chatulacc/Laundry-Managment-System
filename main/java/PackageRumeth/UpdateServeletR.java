package PackageRumeth;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateServeletR")
public class UpdateServeletR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String orderid = request.getParameter("update_orderid");
		String name = request.getParameter("update_name");
		String complaint= request.getParameter("update_complaint");
		String contactnumber = request.getParameter("update_contactnumber");
		String additionalfield= request.getParameter("update_additionalfield");
		
		
		boolean isCorrect;
		
		isCorrect = RumethDB.updateServeletR(orderid, name, complaint, contactnumber, additionalfield);
		
		if (isCorrect == true) {
			RequestDispatcher dis = request.getRequestDispatcher("ManageComplaintRead.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
			
		}

	

	}

}