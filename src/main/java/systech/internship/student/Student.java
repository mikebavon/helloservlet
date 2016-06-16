package systech.internship.student;

public class Student {
	
	private String name;
	
	private String regNo;

	public String getName() {
		if(name == null)
			return "Not available";
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRegNo() {
		return regNo;
	}

	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}
	
	public double calculate(int number1, int number2){
		return Math.sqrt(number1 + number2);
	}
	
}
