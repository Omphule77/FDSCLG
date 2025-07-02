package com.miniproject.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.miniproject.entity.Admin;

public class RowMapperImplAdmin implements org.springframework.jdbc.core.RowMapper<Admin>{

	@Override
	public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
		Admin adm=new Admin();
		adm.setId(rs.getInt(1));
		adm.setName(rs.getString(2));
		adm.setEmail(rs.getString(3));
		adm.setPhone1(rs.getString(4));
		adm.setAddress(rs.getString(5));
		adm.setPassword(rs.getString(6));
		return adm;
	}

	
}
