package minutes.com.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.jdbc.core.RowMapper;

import minutes.com.entities.Team;
import minutes.com.services.ArrayToArrayList;

public class TeamMapper implements RowMapper<Team> {
	
	public Team mapRow(ResultSet rs, int rowNum) throws SQLException {
		ArrayToArrayList atal = new ArrayToArrayList();
	    Team team = new Team();
	    team.setName(rs.getString("name"));
	    team.setLeague(atal.arrayToIntArrayList(rs.getArray("leagues")));
	    team.setPlayers(atal.arrayToIntArrayList(rs.getArray("players")));
	    team.setTags(atal.arrayToStringArrayList(rs.getArray("tags")));
	    return team;
	  }
}
