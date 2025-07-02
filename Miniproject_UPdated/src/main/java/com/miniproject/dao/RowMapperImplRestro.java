package com.miniproject.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.miniproject.entity.Restro;

public class RowMapperImplRestro implements RowMapper<Restro> {

	@Override
	public Restro mapRow(ResultSet rs, int rowNum) throws SQLException {

		Restro restro=new Restro();
		restro.setId(rs.getInt(1));
		restro.setRname(rs.getString(2));
		restro.setRaddress(rs.getString(3));
		restro.setRphone1(rs.getString(4));
		restro.setRphone2(rs.getString(5));
		restro.setOname(rs.getString(6));
		restro.setOemail(rs.getString(7));
		restro.setOphone(rs.getString(8));
		restro.setOutlet(rs.getString(9));
		restro.setOtime(rs.getString(10));
		restro.setCtime(rs.getString(11));
		restro.setHoliday(rs.getString(12));
		restro.setRgst(rs.getString(13));
		
		return restro;
	}

}
