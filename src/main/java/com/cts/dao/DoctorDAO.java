package com.cts.dao;

import java.util.List;

import com.cts.entity.CheckupRequest;
import com.cts.entity.Doctor;


public interface DoctorDAO {
	
	void  saveDoctor(Doctor doctor);
	public Doctor getDoctor(String p);
	public List<CheckupRequest> getRequest(String p);
	
}
