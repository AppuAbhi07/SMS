package com.abhishek.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.abhishek.model.Student;
import com.abhishek.repository.StudentRepository;

@Service
public class StudentService {

	private final StudentRepository studentRepository;

	public StudentService(StudentRepository studentRepository) {
		this.studentRepository = studentRepository;
	}

	// GET ALL STUDENTS
	public List<Student> getAllStudents() {
		return studentRepository.findAll();
	}

	// SAVE A NEW STUDENT
	public void saveStudent(Student student) {
		studentRepository.save(student);
	}

	// GET A STUDENT BY ID
	public Student getStudentById(Long id) {
		return studentRepository.findById(id)
				.orElseThrow(() -> new IllegalArgumentException("Invalid student ID: " + id));
	}

	// UPDATE A STUDENT
	public void updateStudent(Long id, Student studentDetails) {
		Student existingStudent = studentRepository.findById(id)
				.orElseThrow(() -> new IllegalArgumentException("Invalid student ID: " + id));
		existingStudent.setFirstName(studentDetails.getFirstName());
		existingStudent.setLastName(studentDetails.getLastName());
		existingStudent.setEmail(studentDetails.getEmail());
		studentRepository.save(existingStudent);
	}

	// DELETE A STUDENT BY ID
	public void deleteStudentById(Long id) {
		studentRepository.deleteById(id);
	}

	// FIND STUDENTS BY FIRST NAME
	public List<Student> getStudentsByFirstName(String firstName) {
		return studentRepository.findStudentsByFirstName(firstName);
	}
}
