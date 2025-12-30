package edu.cjc.app.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import edu.cjc.app.model.Student;


@Repository
public interface StudentRepo extends JpaRepository<Student, Integer> {

	

	List<Student> findByBatchnumberAndBatchMode(String bn, String bm);

	Student getStudentById(int id, String fees);

	






}
