
public class Member {
	private String  name, age,gender,nationality,email,cAddress,pAddress,occupation,occuDetails;
	

	public Member() {
		super();
	}



	public Member(String name, String age, String gender, String nationality, String email, String cAddress,
			String pAddress, String occupation, String occuDetails) {
		super();
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.nationality = nationality;
		this.email = email;
		this.cAddress = cAddress;
		this.pAddress = pAddress;
		this.occupation = occupation;
		this.occuDetails = occuDetails;
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getcAddress() {
		return cAddress;
	}

	public void setcAddress(String cAddress) {
		this.cAddress = cAddress;
	}

	public String getpAddress() {
		return pAddress;
	}

	public void setpAddress(String pAdress) {
		this.pAddress = pAdress;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}



	public String getOccuDetails() {
		return occuDetails;
	}



	public void setOccuDetails(String occuDetails) {
		this.occuDetails = occuDetails;
	}
	

	
	
}
