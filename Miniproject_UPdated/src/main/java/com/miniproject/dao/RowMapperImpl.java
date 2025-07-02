package com.miniproject.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.miniproject.entity.Customer;

public class RowMapperImpl implements org.springframework.jdbc.core.RowMapper<Customer> {

	@Override
	public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Customer ctm=new Customer();
		ctm.setId(rs.getInt(1));
		ctm.setName(rs.getString(2));
		ctm.setEmail(rs.getString(3));
		ctm.setPhone1(rs.getString(4));
		ctm.setPhone2(rs.getString(5));
		ctm.setAddress(rs.getString(6));
		ctm.setPassword(rs.getString(7));
		ctm.setPath(rs.getString(8));
		ctm.setFq(rs.getString(9));
		
		return ctm;
	}

}
