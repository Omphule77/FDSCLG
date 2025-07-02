package com.miniproject.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.miniproject.entity.AddProduct;

public class RowMapperProduct implements org.springframework.jdbc.core.RowMapper<AddProduct>{

	@Override
	public AddProduct mapRow(ResultSet rs, int rowNum) throws SQLException {
		AddProduct aProduct=new AddProduct();
		aProduct.setId(rs.getInt(1));
		aProduct.setPname(rs.getString(2));
		String description = rs.getString(3);
		if (description.length() > 30) {
		    description = description.substring(0, 30) + "...";
		}
		aProduct.setDescription(description);

		aProduct.setDescription(description);
		aProduct.setType(rs.getString(4));
		aProduct.setPrice(rs.getString(5));
		aProduct.setPath(rs.getString(6));
		aProduct.setFlag(rs.getString(7));
		aProduct.setRname(rs.getString(8));
		aProduct.setRgst(rs.getString(9));
		return aProduct;
	}


}
