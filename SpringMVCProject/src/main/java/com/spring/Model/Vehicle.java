package com.spring.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Vehicle {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int vid;
	String vname;
	double price;
	int milage;
	public Vehicle() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Vehicle(int vid, String vname, double price, int milage) {
		super();
		this.vid = vid;
		this.vname = vname;
		this.price = price;
		this.milage = milage;
	}
	public int getVid() {
		return vid;
	}
	public void setVid(int vid) {
		this.vid = vid;
	}
	public String getVname() {
		return vname;
	}
	public void setVname(String vname) {
		this.vname = vname;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getMilage() {
		return milage;
	}
	public void setMilage(int milage) {
		this.milage = milage;
	}
	@Override
	public String toString() {
		return "Vehicle [vid=" + vid + ", vname=" + vname + ", price=" + price + ", milage=" + milage + "]";
	}
	
	
}

