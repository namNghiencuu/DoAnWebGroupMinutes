package minutes.com.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.jdbc.core.RowMapper;

import minutes.com.entities.Match;

public class MatchMapper implements RowMapper<Match> {
	
	public Match mapRow(ResultSet rs, int rowNum) throws SQLException {
	    Match match = new Match();
	    match.setId(rs.getInt("id"));
	    match.setTeamName1(rs.getString("teamName1"));
	    match.setTeamName2(rs.getString("teamName2"));
	    match.setScore1(rs.getInt("score1"));
	    match.setScore2(rs.getInt("score2"));

	    match.setId(rs.getInt("id"));
	    match.setId(rs.getInt("id"));
	    match.setId(rs.getInt("id"));
	    match.setId(rs.getInt("id"));
	    match.setId(rs.getInt("id"));
	    match.setId(rs.getInt("id"));
	    match.setId(rs.getInt("id"));
	    match.setId(rs.getInt("id"));
	    return match;
	  }
}
