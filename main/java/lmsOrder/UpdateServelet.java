package lmsOrder;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateServelet")
public class UpdateServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*String showNo = request.getParameter("showNo");*/
		String name = request.getParameter("p_name");
		String address = request.getParameter("p_address");
		String no= request.getParameter("p_no");
		String date = request.getParameter("p_date");
		String time= request.getParameter("p_time");
		String urgency = request.getParameter("p_urgency");
		String quantity = request.getParameter("p_quantity");
		String amount= request.getParameter("p_amount");
		
		boolean isCorrect;
		
		isCorrect = PlaceAnOrder_DBUtil.updateServelet(name,address,no,date,time,urgency,quantity,amount);
		
		if (isCorrect == true) {
			RequestDispatcher dis = request.getRequestDispatcher("PickupRead.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
			
		}

	

}}
