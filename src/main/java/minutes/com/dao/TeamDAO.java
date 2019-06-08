package minutes.com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import minutes.com.entities.Team;
import minutes.com.mappers.TeamMapper;

@Repository
@Transactional
public class TeamDAO {
	  @Autowired
	  private JdbcTemplate jdbcTemplate;
	  public void save(Team team) {
	    String sql = "INSERT INTO team (name, leagues, players, tags) VALUES (?,?,?,?)";
	    jdbcTemplate.update(sql,team.getName(), team.getLeague(), team.getPlayers(), team.getTags());
	  }
	  public void delete(int id) {
	    String sql = "DELETE FROM team WHERE id = " + id;
	    jdbcTemplate.update(sql);
	  }
	  
	  public void update(Team team) {
	    String sql = "UPDATE team SET name, leagues, players, tags WHERE id = ? ";
	    jdbcTemplate.update(sql, team.getName(), team.getLeague(), team.getPlayers(), team.getTags(), team.getId());
	  }
	  public Team findById(int id) {
	    String sql = "SELECT * FROM team WHERE id = ?";
	    return jdbcTemplate.queryForObject(sql, new TeamMapper(), id);
	  }
	  public List<Team> findAll() {
	    String sql = "SELECT * FROM team";
	    return jdbcTemplate.query(sql, new TeamMapper());
	  }
}
