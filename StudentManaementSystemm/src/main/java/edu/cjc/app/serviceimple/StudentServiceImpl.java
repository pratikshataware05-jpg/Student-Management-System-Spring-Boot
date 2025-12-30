package edu.cjc.app.serviceimple;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.cjc.app.model.Student;
import edu.cjc.app.repository.StudentRepo;
import edu.cjc.app.servicei.StudentServicei;


@Service
public class StudentServiceImpl implements StudentServicei {
	
	@Autowired
	StudentRepo sr;

	@Override
	public void saveStudent(Student student) {
		sr.save(student);
		
	}

	@Override
	public List<Student> getAllStudent() {
		return 	sr.findAll();
	
	}

	@Override
	public List<Student> deleteStudent(int id) {
	sr.deleteById(id);
	return sr.findAll();
		
	
	
	}

	 @Override
	    public List<Student> findByBatchnumberAndBatchMode(String bn, String bm) {
	        // Call repository method directly
	        return sr.findByBatchnumberAndBatchMode(bn, bm);
	    }

	@Override
	public Student getStudentById(int id) {
		return sr.findById(id).orElse(null);
	}

	@Override
	public Student updateStudent(Student st) {
		return sr.save(st);

		
	}

	@Override
	public void updateStudentFees(int id, double fees) {
	    Student student = sr.findById(id).orElse(null);
	    if(student != null) {
	        student.setFeesPaid(student.getFeesPaid() + fees);
	        sr.save(student);
	    }
	}

	@Override
	public void updateStudentBatch(int id, String batch, String bn, String bm) {
		 Student student = sr.findById(id).orElse(null);

	        if (student != null) {
	            student.setBatch(batch);
	            student.setBatchMode(bm);
	            student.setBatchnumber(bn);

	            sr.save(student);
	        }
		
	}

	
        
	}
	
	
	

	

	


