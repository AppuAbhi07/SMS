package com.abhishek.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.abhishek.model.Student;
import com.abhishek.services.StudentService;

@Controller
@RequestMapping("/students")
public class StudentController {

	@Autowired
	private StudentService studentService;

	// LIST ALL STUDENTS
	@GetMapping
	public String listStudents(Model model) {
		List<Student> students = studentService.getAllStudents();
		model.addAttribute("students", students);
		return "list-students";
	}

	// SHOW FORM TO CREATE NEW STUDENT
	@GetMapping("/new")
	public String showNewStudentForm(Model model) {
		model.addAttribute("student", new Student());
		return "new-student-form";
	}

	// CREATE NEW STUDENT
	@PostMapping
	public String createStudent(@ModelAttribute("student") Student student) {
		studentService.saveStudent(student);
		return "redirect:/students";
	}

	// SHOW FORM TO EDIT STUDENT
	@GetMapping("/edit/{id}")
	public String showEditStudentForm(@PathVariable Long id, Model model) {
		Student existingStudent = studentService.getStudentById(id);
		model.addAttribute("student", existingStudent);
		return "edit-student-form";
	}

	// UPDATE STUDENT
	@PostMapping("/update/{id}")
	public String updateStudent(@PathVariable Long id, @ModelAttribute("student") Student studentDetails) {
		studentService.updateStudent(id, studentDetails);
		return "redirect:/students";
	}

	// DELETE STUDENT
	@GetMapping("/delete/{id}")
	public String deleteStudent(@PathVariable Long id) {
		studentService.deleteStudentById(id);
		return "redirect:/students";
	}

	// GET STUDENTS BY FIRST NAME
	@GetMapping("/name")
	public String getStudentsByFirstName(@RequestParam String firstName, Model model) {
		List<Student> students = studentService.getStudentsByFirstName(firstName);
		model.addAttribute("students", students);
		return "list-students"; // Reusing the list-students template to display filtered students
	}
}
