package minutes.com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import minutes.com.entities.Admin;
import minutes.com.mappers.AdminMapper;

@Repository
@Transactional
public class AdminDAO {
	  @Autowired
	  private JdbcTemplate jdbcTemplate;
	  public void save(Admin admin) {
	    String sql = "INSERT INTO admin (userName, password) VALUES (?,?)";
	    jdbcTemplate.update(sql,admin.getUserName(), admin.getPassword());
	  }
	  public void delete(int id) {
	    String sql = "DELETE FROM admin WHERE id = " + id;
	    jdbcTemplate.update(sql);
	  }
	  
	  public void update(Admin admin) {
	    String sql = "UPDATE admin SET userName, password WHERE id = ? ";
	    jdbcTemplate.update(sql, admin.getUserName(), admin.getPassword(), admin.getId());
	  }
	  public Admin findById(int id) {
	    String sql = "SELECT * FROM admin WHERE id = ?";
	    return jdbcTemplate.queryForObject(sql, new AdminMapper(), id);
	  }
	  public List<Admin> findAll() {
	    String sql = "SELECT * FROM admin";
	    return jdbcTemplate.query(sql, new AdminMapper());
	  }
}
