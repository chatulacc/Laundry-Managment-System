package lmsOrder;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PickupReadServelet")
public class PickupReadServelet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String name = request.getParameter("name");
		
		try {
			
			List<Customer1> cusDetails = PlaceAnOrder_DBUtil.getCustomerDetails(name);
			request.setAttribute("cusDetails", cusDetails);
		
	}
		catch(Exception e) {
	        e.printStackTrace();
	    }
	    request.getRequestDispatcher("PickupRead.jsp").forward(request, response);

		// TODO Auto-generated method stub
	    doGet(request,response);
	}

	
	}

