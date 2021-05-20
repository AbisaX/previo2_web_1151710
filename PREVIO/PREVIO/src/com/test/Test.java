package com.test;

import com.dao.*;
import com.entity.*;
import com.util.ConnectionGeneric;

public class Test {
	public static void main(String args[]) {
		//ConnectionGeneric.getConnection();
		
		Team team = new Team();
		Country country = new Country();
		//Cyclist c = new Cyclist();
		//CyclistDao cDao = new CyclistDao();
		CountryDao coDao = new CountryDao();
		//TeamDao tDao = new TeamDao();
		country.setId("co");
		country.setName("co");
		coDao.insert(country);
	}
}
