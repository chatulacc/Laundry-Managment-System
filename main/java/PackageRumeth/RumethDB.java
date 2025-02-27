package PackageRumeth;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;


public class RumethDB {
	public static boolean insertData(String name, String orderid , String complaint,String contactnumber, String additionalfield) {
		boolean isSuccess = false;
		
		//create database connection
		
		String url = "jdbc:mysql://localhost:3306/laundrydb";
		String username = "root";
		String password = "1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			Statement stmt = con.createStatement();
			
			String sql = "insert into feedback values ('"+name+"', '"+orderid+"', '"+complaint+"', '"+contactnumber+"', '"+additionalfield+"',0)";
			int results = stmt.executeUpdate(sql);
			
			if(results > 0 ) {
				isSuccess = true;
			}	
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;

	}
	
	
	
	/*read */
	
	public static List<Customer4> getCustomerDetails(String orderid){
		ArrayList<Customer4> customers = new ArrayList<>();
		
		String url = "jdbc:mysql://localhost:3306/laundrydb";
		String username = "root";
		String password = "1234";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			Statement stmt = con.createStatement();
			String sql = "select * from feedback where orderid = '"+orderid+"'";
	        ResultSet rs = stmt.executeQuery(sql);
	        
	        while(rs.next()) {
	        	
	        	String name = rs.getString(1);
	        	String orderId = rs.getString(2);
	        	String complaint = rs.getString(3);
	        	String contactnumber = rs.getString(4);
	        	String additionalfield = rs.getString(5);
	        	String id = rs.getString(6);
	        	
	        	
	        	Customer4 customer = new Customer4(name,orderId,complaint,contactnumber, additionalfield, id);
	        	customers.add(customer);
	        }
			
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		return customers;
		
	}
	/*delete */
		
		public static boolean deleteServeletR(String orderid)
		{
			
			
			boolean isSuccess = false;
			
			//create database connection
			
			String url = "jdbc:mysql://localhost:3306/laundrydb";
			String username = "root";
			String password = "1234";
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(url, username, password);
				Statement stmt = con.createStatement();
				String sql = "delete from feedback where orderid = '"+orderid+"'";
				int results = stmt.executeUpdate(sql);
				
				if(results > 0 ) {
		            isSuccess = true;
		        }
				
				else {
					isSuccess = false;
				}
				
				
			}
			
			catch(Exception e) {
				e.printStackTrace();
			}
			
			
			return isSuccess;
		}



	

/*update */

public static boolean updateServeletR(String orderid,String name,String complaint,String contactnumber,String additionalfield) {
boolean success = false;




String url = "jdbc:mysql://localhost:3306/laundrydb";
String username = "root";
String password = "1234";

try {
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url, username, password);
	Statement stmt = con.createStatement();
	
	String sql = "update feedback set name= '"+name+"', orderid= '"+orderid+"', complaint= '"+complaint+"', contactnumber='"+contactnumber+"', additionalfield= '"+additionalfield+"'";
	
	int rs = stmt.executeUpdate(sql);
	
	if (rs > 0) {
		success = true;
	}
	
	else {
		success = false;
	}
	
	
}

catch (Exception e) {
	e.printStackTrace();
}


return success;


}}