package cl.praxis.models.services;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import cl.praxis.models.dto.Student;

public class StudentService {

	private List<Student> studentList = new ArrayList<Student>();
	
	public StudentService() {
		studentList.add(new Student(1, "Alan", "Beltrán", "Alcalde Delano #42343", LocalDate.of(1987, 10, 2)));
		studentList.add(new Student(2, "Angela", "Nappe", "Las Hualtatas #76345", LocalDate.of(1993, 10, 25)));
		studentList.add(new Student(3, "Jacob", "Riquelme", "Callejón Lo Ovalle #2345", LocalDate.of(1991, 12, 28)));
	}
	
	public List<Student> findAll(){
		return studentList;
	}
	
	public Student findOne(int id) {
		return studentList.stream().filter(s-> s.getId() == id).findFirst().orElse(null);
	}
	
	public boolean create(int id, String name, String lastName, String address, LocalDate birstday) {
		studentList.add(new Student(id, name, lastName, address, birstday));
		return true;
	}
	
	public boolean update(int id, String name, String lastName, String address, LocalDate birstday) {
		Student s = findOne(id);
		if (s != null) {
			s.setName(name);
			s.setLastName(lastName);
			s.setAddress(address);
			s.setBirthday(birstday);
			return true;
		}
		return false;
	}
}
