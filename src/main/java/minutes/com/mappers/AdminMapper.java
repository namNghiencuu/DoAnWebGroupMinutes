package minutes.com.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.jdbc.core.RowMapper;

import minutes.com.entities.Admin;

public class AdminMapper implements RowMapper<Admin> {
	
	public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
	    Admin admin = new Admin();
	    admin.setId(rs.getInt("id"));
	    admin.setUserName(rs.getString("userName"));
	    admin.setPassword(rs.getString("password"));
	    admin.setEmail(rs.getString("email"));
	    return admin;
	  }
}
