package systech.internship.school;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import systech.internship.student.Student;

@WebServlet("/school")
public class School extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		
		PrintWriter writter = response.getWriter();
		
		List<Student> students = new ArrayList<Student>();
		Student student = new Student();
		student.setName("John Doe");
		student.setRegNo("S13/20006/07");
		students.add(student);
		
		student = new Student();
		student.setName("John Smith");
		student.setRegNo("S13/20007/07");
		students.add(student);
		
		student = new Student();
		student.setName("Jane Doe");
		student.setRegNo("S13/20008/07");
		students.add(student);
		
		String output ="<table style=\"width:100%;border: 1px;font-size:12px;\">"
				+"<tr style=\"background-color: gray;\"><th>Name</th><th>Registration Number</th></tr>";
		
		for(Student std : students)
			output += "<tr><td>" + std.getName() + "</td><td>" + std.getRegNo() + "</td></tr>";

		output += "</table>";
				
		writter.println(output);
		
		
	}

}
