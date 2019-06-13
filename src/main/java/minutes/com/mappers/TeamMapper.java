package minutes.com.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.jdbc.core.RowMapper;

import minutes.com.entities.Team;

public class TeamMapper implements RowMapper<Team> {
	
	public Team mapRow(ResultSet rs, int rowNum) throws SQLException {
	    Team team = new Team();
	    team.setId(rs.getInt("id"));
	    team.setName(rs.getString("Name"));
	    team.setNation(rs.getString("Nation"));
	    team.setLogo(rs.getString("Logo"));
	    team.setCoach(rs.getString("Coach"));
	    return team;
	  }
}
