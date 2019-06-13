package minutes.com.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import minutes.com.dao.MatchDAO;
import minutes.com.entities.Match;

@Service
@Transactional
public class MatchService {
	
	  @Autowired
	  private MatchDAO matchDAO;
	  
	  public List<Match> findAll() {
	    return matchDAO.findAll();
	  }
	  public Match findById(int id) {
	    return matchDAO.findById(id);
	  }
	  
	  public void save(Match match){
	    // validate business
	    matchDAO.save(match);
	  }
	  public void update(Match match){
	    // validate business
	    matchDAO.update(match);
	  }
	  
	  public void delete(int id){
	    // validate business
	    matchDAO.delete(id);
	  }
}
