package lmsOrder;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteServelet")
public class deleteServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		boolean isTrue;
		
		isTrue = PlaceAnOrder_DBUtil.deleteServelet(name);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("PickupRead.jsp");
			dispatcher.forward(request, response);
        }
		
		else {
			RequestDispatcher dispatcher1 = request.getRequestDispatcher("PickupRead.jsp");
            dispatcher1.forward(request, response);
		}
	

}


}
