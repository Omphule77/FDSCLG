package com.miniproject.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.miniproject.entity.Orders;

public class RowMapperImplOrders implements RowMapper<Orders> {

	@Override
	public Orders mapRow(ResultSet rs, int rowNum) throws SQLException {
		Orders orders=new Orders();
		orders.setId(rs.getInt(1));
		orders.setPname(rs.getString(2));
		orders.setQuantity(rs.getString(3));
		orders.setNote(rs.getString(4));
		orders.setAddress(rs.getString(5));
		orders.setPhone1(rs.getString(6));
		orders.setPhone2(rs.getString(7));
		orders.setTprice(rs.getString(8));
		orders.setFlag(rs.getString(9));
		orders.setCod(rs.getString(10));
		orders.setName(rs.getString(11));
		orders.setRname(rs.getString(12));
		orders.setPath(rs.getString(13));
		orders.setDatetime(rs.getString(14));

		return orders;
	}

}
