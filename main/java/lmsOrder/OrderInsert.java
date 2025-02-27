package lmsOrder;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/OrderInsert")
public class OrderInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("no");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String urgency = request.getParameter("urgency");
		String quantity = request.getParameter("quantity");
		String price = request.getParameter("amount");
		
		boolean isSuccess;
		
		isSuccess = PlaceAnOrder_DBUtil.insertData(name, address, phone, date, time, urgency, quantity, price);
		
		if (isSuccess == true) {
			RequestDispatcher dis = request.getRequestDispatcher("PickupRead.jsp");
			dis.forward(request, response);
		}
		
		else {
			
			RequestDispatcher dis = request.getRequestDispatcher("Unsuccess.jsp");
			dis.forward(request, response);
			
		}
	}

}
