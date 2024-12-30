package com.spring.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.Dao.VehicleDao;
import com.spring.Model.Vehicle;

@Service
public class VehicleService {

	@Autowired
	VehicleDao dao;
	

	public void addVehicle(Vehicle v1) {
		dao.add(v1);
	}
	
	public void updateVehicle(Vehicle v1)
	{
		dao.updateData(v1);
	}

	public void deleteVehicle(int id)
	{
		dao.deleteData(id);
	}
	
	public Vehicle getInfoByID(int id)
	{
		Vehicle vid = dao.getDataByID(id);
		return vid;
	}
	
	

	public List<Vehicle> getAllVehicles() {
	    return dao.getAll();
	}

	

}
