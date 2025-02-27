package lmsOrder;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;


public class PlaceAnOrder_DBUtil {
	
	
		
		public static boolean insertData(String Name, String Address , String ContactNumber, String PickupDate, String PickupTime, String Urgency, String Quantity,String price) {
			boolean isSuccess = false;
			
			//create database connection
			
			String url = "jdbc:mysql://localhost:3306/laundrydb";
			String user = "root";
			String pass = "1234";
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(url, user, pass);
				Statement stmt = con.createStatement();
				String sql = "insert into pickupanddelivery values ('"+Name+"', '"+Address+"', '"+ContactNumber+"', '"+PickupDate+"', '"+PickupTime+"', '"+Urgency+"', '"+Quantity+"','"+price+"',0)";
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
		
		
		
		/*read method */
		
		public static List<Customer1> getCustomerDetails(String Name){
			ArrayList<Customer1> customers = new ArrayList<>();
			
			String url = "jdbc:mysql://localhost:3306/laundrydb";
			String user = "root";
			String pass = "1234";
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(url, user, pass);
				Statement stmt = con.createStatement();
				String sql = "select * from pickupanddelivery where Name = '"+Name+"'";
		        ResultSet rs = stmt.executeQuery(sql);
		        
		        while(rs.next()) {
		        	
		        	String name = rs.getString(1);
		        	String address = rs.getString(2);
		        	String no = rs.getString(3);
		        	String date = rs.getString(4);
		        	String time = rs.getString(5);
		        	String urgency= rs.getString(6);
		        	String quantity= rs.getString(7);
		        	String amount = rs.getString(8);
		        	String id = rs.getString(9);
		        	
		        	
		        	Customer1 customer = new Customer1(name,address,no,date,time,urgency,quantity,amount,id);
		        	customers.add(customer);
		        }
				
			}
			
			catch(Exception e){
				e.printStackTrace();
			}
			return customers;
			
		}
		/*delete method*/
			
			public static boolean deleteServelet(String name)
			{
				
				
				boolean isSuccess = false;
				
				//create database connection
				
				String url = "jdbc:mysql://localhost:3306/laundrydb";
				String user = "root";
				String pass = "1234";
				
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection(url, user, pass);
					Statement stmt = con.createStatement();
					String sql = "delete from pickupanddelivery where Name = '"+name+"'";
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



		

/*update method*/

public static boolean updateServelet(String name,String address,String no,String date,String time,String urgency,String quantity,String amount) {
	boolean success = false;
	
	
	
	
	String url = "jdbc:mysql://localhost:3306/laundrydb";
	String user = "root";
	String pass = "1234";
	
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, pass);
		Statement stmt = con.createStatement();
		String sql = "update  pickupanddelivery set Name= '"+name+"', Address= '"+address+"', ContactNumber= '"+no+"', PickupDate= '"+date+"', PickupTime= '"+time+"', Urgency= '"+urgency+"', Quantity= '"+quantity+"',Price= '"+amount+"' where Name= '"+name+"'";
		
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


	

 


