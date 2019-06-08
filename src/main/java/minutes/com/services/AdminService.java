package minutes.com.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import minutes.com.dao.AdminDAO;
import minutes.com.entities.Admin;

@Service
@Transactional
public class AdminService {
	@Autowired
	  private AdminDAO adminDAO;
	  
	  public List<Admin> findAll() {
	    return adminDAO.findAll();
	  }
	  public Admin findById(int id) {
	    return adminDAO.findById(id);
	  }
	  
	  public void save(Admin admin){
	    // validate business
	    adminDAO.save(admin);
	  }
	  public void update(Admin admin){
	    // validate business
	    adminDAO.update(admin);
	  }
	  
	  public void delete(int id){
	    // validate business
	    adminDAO.delete(id);
	  }
}
