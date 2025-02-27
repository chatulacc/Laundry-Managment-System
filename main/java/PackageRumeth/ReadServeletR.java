package PackageRumeth;


import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/ReadServeletR")
public class ReadServeletR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		{
			
			String orderid = request.getParameter("orderid");
			
			try {
				
				List<Customer4> cusDetails = RumethDB.getCustomerDetails(orderid);
				request.setAttribute("cusDetails", cusDetails);
			
		}
			catch(Exception e) {
		        e.printStackTrace();
		    }
		    request.getRequestDispatcher("ManageComplaintRead.jsp").forward(request, response);

			// TODO Auto-generated method stub
		    doGet(request,response);
		}

		
		}

	}