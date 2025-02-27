package PackageRumeth;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteServeletR")
public class DeleteServeletR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String orderid = request.getParameter("orderid");
		boolean isTrue;
		
		isTrue = RumethDB.deleteServeletR(orderid);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("ManageComplaintRead.jsp");
			dispatcher.forward(request, response);
        }
		
		else {
			RequestDispatcher dispatcher1 = request.getRequestDispatcher("unsuccess.jsp");
            dispatcher1.forward(request, response);
		}
	
	}

}