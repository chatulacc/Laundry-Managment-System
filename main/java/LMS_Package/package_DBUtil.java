package LMS_Package;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class package_DBUtil {

	private static boolean success;
	
	public static boolean insert(String packageName,String CompanyName,String CompanyAddress,String CompanyEmail, String PhoneNumber, String NumberOfStores, String Duration, String Custormization, String Packageprice) 
	{
		String url = "jdbc:mysql://localhost:3306/laundrydb";
		String username = "root";
		String password = "1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url,username, password);
			
			Statement stmt = conn.createStatement();
			 //column name
			String sql = "insert into packagedetails values (0,'"+packageName+"','"+CompanyName+"', '"+CompanyAddress+"', '"+CompanyEmail+"', '"+PhoneNumber+"','"+NumberOfStores+"', '"+Duration+"', '"+Custormization+"', '"+Packageprice+"')";
			int i = stmt.executeUpdate(sql);
			
			if( i > 0) {
				success = true;
			}
			else {
				success = false;
			}
				
		}catch(Exception e){
			e.printStackTrace();
		}
		return success;
	
	  }
	/*Read*/
	public static ArrayList<laundry_Package> validate(String CName ){ //one ekk danne puluvn com name ekete, validate s a method
		
		ArrayList<laundry_Package> packDetail = new ArrayList<>();
		
		String url = "jdbc:mysql://localhost:3306/laundrydb";
		String username = "root";
		String password = "1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url,username, password);
			
			Statement stmt = conn.createStatement();
			//CompanyName is column name 
			String sql ="select * from packagedetails where CompanyName = '"+CName+"' "; //validate method eke passe kerne name eke
			ResultSet r = stmt.executeQuery(sql);
		
			while(r.next()) {
				String id = r.getString(1);
				String packageName = r.getString(2);
				String companyName = r.getString(3);
				String compAddrs = r.getString(4);
				String cEmail = r.getString(5);
				String phoneNo = r.getString(6);
				String noOfStore = r.getString(7);
				String duration = r.getString(8);
				String cutormization = r.getString(9);
				String price = r.getString(10);
				
				laundry_Package lp = new laundry_Package( id,packageName,companyName, compAddrs,  cEmail, phoneNo, noOfStore, duration, cutormization, price);
				packDetail.add(lp);
				
			}
			/*else {
				success = false;
			}*/
		}catch (Exception e) {
			e.printStackTrace();
		}
		return packDetail;
	}
	
	
	
	/*update*/
	public static boolean updateData(String companyName, String packageName,String duration, String price) {
		boolean success = false;
		
		/*int id =Integer.parseInt(id);*/
		
		String url = "jdbc:mysql://localhost:3306/laundrydb";
		String username = "root";
		String password = "1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url,username, password);
			Statement stmt = conn.createStatement();
			
			String sql = "update packagedetails set CompanyName = '"+companyName+"', packageName = '"+packageName+"', Duration= '"+duration+"', Packageprice = '"+price+"' where CompanyName = '"+companyName+"'";
			int u = stmt.executeUpdate(sql);
			
			if( u > 0) {
				success = true;
			}
			else {
				success = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return success;
		
	}
	
	/*Delete.........*/
	public static boolean packageDelete(String companyName) {
		
		boolean isSuccess = false;
		
		String url = "jdbc:mysql://localhost:3306/laundrydb";
		String username = "root";
		String password = "1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url,username, password);
			
			Statement stmt = conn.createStatement();
			
			String sql = "delete from packagedetails where CompanyName = '"+companyName+"' "; 
			int results = stmt.executeUpdate(sql);
		
			if(results > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		
		
		
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
	
