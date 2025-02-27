package LMS_Package;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;


public class packageInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Pname = request.getParameter("package");//name of form
		String Cname = request.getParameter("name");
		String Caddress = request.getParameter("address");
		String Cemail = request.getParameter("email");
		String Cphone = request.getParameter("phone");
		String NoOfStores = request.getParameter("store_no");
		String pDuration = request.getParameter("duration");
		String pCustur = request.getParameter("cutormization");
		String pPrice = request.getParameter("price");
		
		boolean Istrue;
		
		Istrue = package_DBUtil.insert(Pname,Cname,Caddress,Cemail,Cphone,NoOfStores,pDuration,pCustur,pPrice);
		
		if(Istrue == true) {
			request.setAttribute("errorMessage", "Your Package Added Successfully!");
			RequestDispatcher rd = request.getRequestDispatcher("activatePackage.jsp");
			rd.forward(request, response);
			
		}
		else {
			request.setAttribute("errorMessage", "Your Package Activation Failed!");			
			RequestDispatcher rd = request.getRequestDispatcher("Unsuccess.jsp");
			rd.forward(request, response);
		}
	}

}
