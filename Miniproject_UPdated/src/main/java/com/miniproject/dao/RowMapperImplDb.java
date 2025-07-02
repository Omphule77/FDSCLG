package com.miniproject.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.miniproject.entity.DeliveryBoy;

public class RowMapperImplDb implements RowMapper<DeliveryBoy>{

	@Override
	public DeliveryBoy mapRow(ResultSet rs, int rowNum) throws SQLException {
		DeliveryBoy dBoy=new DeliveryBoy();
		dBoy.setId(rs.getInt(1));
		dBoy.setName(rs.getString(2));
		dBoy.setEmail(rs.getString(3));
		dBoy.setPhone1(rs.getString(4));
		dBoy.setPhone2(rs.getString(5));
		dBoy.setDob(rs.getString(6));
		dBoy.setVd(rs.getString(7));
		dBoy.setLd(rs.getString(8));
		dBoy.setExp(rs.getString(9));
		dBoy.setIdproof(rs.getString(10));
		dBoy.setAddress(rs.getString(11));
		return null;
	}

}
