package edu.cjc.app.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import edu.cjc.app.StudentManaementSystemmApplication;
import edu.cjc.app.model.Student;
import edu.cjc.app.servicei.StudentServicei;

@Controller
public class StudentController {

   
	
	@Autowired
	StudentServicei si;


    
	
	 @RequestMapping("/")
	    public String loginPage() {
	        return "login";   
	    }
	
	 @RequestMapping("login")
	public String login(@RequestParam("username")String un,@RequestParam("password")String ps) {
		 
		 if(un.equals("admin")&& ps.equals("admin")) {
			 return "adminscreen";
			 
		 }
		 
		 return "login";
		
	}
	 
	 @RequestMapping("/addStudent")
	 public String reg() {
		 return "addstudent";
	 }
	 
	 @RequestMapping("/viewStudents")
	 public String view(Model m) {
		List<Student>list=si.getAllStudent();
		m.addAttribute("Data",list);
		 
		 return "view";
	 }
	 
	 @RequestMapping("/saveStudent")
	 public String save(@ModelAttribute Student student,Model m ) {
		 si.saveStudent(student);
		 
		 return "adminscreen";
	 }
	
	 @RequestMapping("/deleteStudent")
	 public String delete(@RequestParam("id") int id, Model m) {
	     List<Student> list = si.deleteStudent(id);
	     m.addAttribute("Data", list);
	     return "view"; 
	 }


	 @RequestMapping("searchByBatchNumber")
	 public String search(@RequestParam("batchnumber")String bn,@RequestParam("batchMode")String bm,Model m ) {
		 List<Student>list = si.findByBatchnumberAndBatchMode(bn, bm);
		 m.addAttribute("Data",list);
		 return "view";	
	 }
	 
	 @RequestMapping("editStudent")
	 public String editStudent(@RequestParam("id") int id, Model model) {

	     Student student = si.getStudentById(id);
	     model.addAttribute("student", student);

	     return "edit"; 
	 }

	 @RequestMapping("updateStudent")
	 public String update(@ModelAttribute Student st,Model m) {
		si.updateStudent(st);
		 List<Student> students = si.getAllStudent(); // refresh list
		    m.addAttribute("Data", students);
		return "view";
		 
	 }

	 @RequestMapping("logout")
	 public String  logout() 
	 {
		 
		 return "login";
		
		 
	}
	 
	 @RequestMapping("payFees")
	 public String onFees(@RequestParam("id")int id,Model m ) {
	Student stu=si.getStudentById(id);
	m.addAttribute("student", stu);
		 return "fees";
	 }
	 
	 @RequestMapping("/updateFees")
	 public String updateFees(@RequestParam("id") int id, @RequestParam("feesPaid") double fees, Model m) {
	     si.updateStudentFees(id, fees);
	     List<Student> list = si.getAllStudent();
	     m.addAttribute("Data", list);
	     return "view";
	 }
	 
	 @RequestMapping("/shiftBatch")
	    public String openShiftPage(@RequestParam int id, Model model) {
	        Student student = si.getStudentById(id);
	        model.addAttribute("student", student);
	        return "shift"; 
	    }
	 
	 @RequestMapping("updateShift")
	 public String updateBatch(@RequestParam("id")int id,@RequestParam("batch")String batch,@RequestParam("batchnumber")String bn,@RequestParam("batchMode")String bm,Model m )
	 {					
		 si.updateStudentBatch(id,batch,bn,bm);
		 List<Student> list=si.getAllStudent();
		 m.addAttribute("Data",list);
		 return "view";
		 
	 }
	 
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
