package LMS_Package;

public class laundry_Package {
	private String id;
	private String packageName;
	private String companyName;
	private String compAddrs;
	private String cEmail;
	private String phoneNo;
	private String noOfStore;
	private String duration;
	private String cutormization;
	private String price;
	
	public laundry_Package(String id, String packageName, String companyName, String compAddrs, String cEmail,
			String phoneNo, String noOfStore, String duration, String cutormization, String price) {
		this.id = id;
		this.packageName = packageName;
		this.companyName = companyName;
		this.compAddrs = compAddrs;
		this.cEmail = cEmail;
		this.phoneNo = phoneNo;
		this.noOfStore = noOfStore;
		this.duration = duration;
		this.cutormization = cutormization;
		this.price = price;
	}

	public String getId() {
		return id;
	}

	public String getPackageName() {
		return packageName;
	}

	public String getCompanyName() {
		return companyName;
	}

	public String getCompAddress() {
		return compAddrs;
	}

	public String getcEmail() {
		return cEmail;
	}

	public String getPhoneNo() {
		return phoneNo;
	}


	public String getNoOfStore() {
		return noOfStore;
	}


	public String getDuration() {
		return duration;
	}

	public String getCutormization() {
		return cutormization;
	}

	public String getPrice() {
		return price;
	}



	
	
	

}
