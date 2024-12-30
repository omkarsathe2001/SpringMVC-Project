package com.spring.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.spring.Model.Vehicle;

@Component
public class VehicleDao {

	
	private HibernateTemplate temp;
	
	
	public HibernateTemplate getTemp() {
		return temp;
	}


	public void setTemp(HibernateTemplate temp) {
		this.temp = temp;
	}


	public VehicleDao() {
		super();
	}


	@Transactional
	public void add(Vehicle v1) {
		temp.save(v1);
	}
	
	@Transactional
	public void updateData(Vehicle v1)
	{
//		Vehicle v = temp.get(Vehicle.class, v1.getVid());
//		v.setVname(v1.getVname());
//		v.setPrice(v1.getPrice());
//		v.setMilage(v1.getMilage());
		temp.update(v1);
	}
	
	@Transactional
	public void deleteData(int id) 
	{
	    Vehicle v = temp.get(Vehicle.class, id);
	    temp.delete(v);
	}
	
	@Transactional
	public Vehicle getDataByID(int id) 
	{
	    Vehicle v = temp.get(Vehicle.class, id);
		return v;
	}


	public List<Vehicle> getAll() {
	    return temp.loadAll(Vehicle.class);
	}


	
	
}

