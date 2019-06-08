package minutes.com.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import minutes.com.dao.TeamDAO;
import minutes.com.entities.Team;

@Service
@Transactional
public class TeamService {
	@Autowired
	  private TeamDAO teamDAO;
	  
	  public List<Team> findAll() {
	    return teamDAO.findAll();
	  }
	  public Team findById(int id) {
	    return teamDAO.findById(id);
	  }
	  
	  public void save(Team team){
	    // validate business
	    teamDAO.save(team);
	  }
	  public void update(Team team){
	    // validate business
	    teamDAO.update(team);
	  }
	  
	  public void delete(int id){
	    // validate business
	    teamDAO.delete(id);
	  }
}
