package edu.cjc.app.servicei;

import java.util.List;

import edu.cjc.app.model.Student;

public interface StudentServicei {

public 	void saveStudent(Student student);

public List<Student> getAllStudent();

public List<Student> deleteStudent(int id);



public Student updateStudent(Student st);


Student getStudentById(int id);

List<Student> findByBatchnumberAndBatchMode(String bn, String bm);



void updateStudentFees(int id, double fees);

public void updateStudentBatch(int id, String batch, String bn, String bm);



}
