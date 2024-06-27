package cl.praxis.models.dto;

import java.time.LocalDate;

public class Student {
	private int id;
	private String name;
	private String lastName;
	private String address;
	private LocalDate birthday;
	public Student() {
		super();
	}
	public Student(int id, String name, String lastName, String address, LocalDate birthday) {
		super();
		this.id = id;
		this.name = name;
		this.lastName = lastName;
		this.address = address;
		this.birthday = birthday;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public LocalDate getBirthday() {
		return birthday;
	}
	public void setBirthday(LocalDate birthday) {
		this.birthday = birthday;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", lastName=" + lastName + ", address=" + address
				+ ", birthday=" + birthday + "]";
	}
	
	
	

}
