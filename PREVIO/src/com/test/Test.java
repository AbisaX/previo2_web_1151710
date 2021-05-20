package com.test;

import java.util.List;

import com.dao.*;
import com.entity.*;
import com.util.ConnectionGeneric;

public class Test {
	public static void main(String args[]) {
		//ConnectionGeneric.getConnection();
		
		//Team team = new Team();
		//Cyclist c = new Cyclist();
		//
		//TeamDao tDao = new TeamDao();
		
		/*Country country = new Country();
		CountryDao coDao = new CountryDao();
		country.setId("co");
		country.setName("co");
		coDao.insert(country);*/
		
		CyclistDao cDao = new CyclistDao();
		Cyclist c = new Cyclist();
		List<Cyclist> listC = cDao.list();
		System.out.println(listC.size());
	}
}
