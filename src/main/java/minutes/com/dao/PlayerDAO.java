package minutes.com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import minutes.com.entities.Player;
import minutes.com.mappers.PlayerMapper;

@Repository
@Transactional
public class PlayerDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void save(Player player) {
		String sql = "INSERT INTO player (name, position, shirtNumber, age, TeamId) VALUES (?,?,?,?,?)";
		jdbcTemplate.update(sql, player.getName(), player.getPosition(), player.getShirtNumber(), player.getAge(),
				player.getTeamId());
	}

	public void delete(int id) {
		String sql = "DELETE FROM player WHERE id = " + id;
		jdbcTemplate.update(sql);
	}

	public void update(Player player) {
		String sql = "UPDATE player SET name, position, shirtNumber, age, TeamId WHERE id = ? ";
		jdbcTemplate.update(sql, player.getName(), player.getPosition(), player.getShirtNumber(), player.getAge(),
				player.getTeamId(), player.getId());
	}

	public Player findById(int id) {
		String sql = "SELECT * FROM player WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new PlayerMapper(), id);
	}

	public List<Player> findAll() {
		String sql = "SELECT * FROM player";
		return jdbcTemplate.query(sql, new PlayerMapper());
	}
	
	public List<Player> findByTeamIdAndPosition(int teamId, String position) {
		String sql = String.format("SELECT * FROM player WHERE TeamId = %d AND position = \"%s\" ", teamId, position);
		return jdbcTemplate.query(sql, new PlayerMapper());
	}
}
