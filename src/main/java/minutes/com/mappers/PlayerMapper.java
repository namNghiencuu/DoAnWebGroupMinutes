package minutes.com.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.jdbc.core.RowMapper;

import minutes.com.entities.Player;

public class PlayerMapper implements RowMapper<Player> {
	
	public Player mapRow(ResultSet rs, int rowNum) throws SQLException {
	    Player player = new Player();
	    player.setName(rs.getString("name"));
	    player.setAge(rs.getInt("age"));
	    player.setPosition(rs.getString("position"));
	    player.setShirtNumber(rs.getInt("shirtNumber"));
	    player.setTeamId(rs.getInt("teamId"));
	    return player;
	  }
}
