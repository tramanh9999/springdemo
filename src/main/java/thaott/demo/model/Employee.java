package thaott.demo.model;

public class Employee {
	private Integer id;
	private String name;
	private Boolean gender;
	
	public Employee() {
		
	}
	
	public Employee(Integer id, String name, Boolean gender) {
		this.id = id;
		this.name = name;
		this.gender = gender;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Boolean getGender() {
		return gender;
	}

	public void setGender(Boolean gender) {
		this.gender = gender;
	}
	
	
	
	
}
