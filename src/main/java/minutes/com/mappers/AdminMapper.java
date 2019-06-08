package minutes.com.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.jdbc.core.RowMapper;

import minutes.com.entities.Admin;
import minutes.com.services.ArrayToArrayList;

public class AdminMapper implements RowMapper<Admin> {
	
	public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
		ArrayToArrayList atal = new ArrayToArrayList();
	    Admin admin = new Admin();
	    admin.setUserName(rs.getString("userName"));
	    admin.setPassword(rs.getString("password"));
	    admin.setTodolist(atal.arrayToStringArrayList(rs.getArray("todolist")));
	    return admin;
	  }
}
