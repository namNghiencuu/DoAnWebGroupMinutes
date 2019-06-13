package minutes.com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import minutes.com.entities.Match;
import minutes.com.mappers.MatchMapper;

@Repository
@Transactional
public class MatchDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void save(Match match) {
		String sql = "INSERT INTO match (teamName1, teamName2, score1, score2, shortContent, notes, leaguesId) VALUES (?, ?, ?,?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, match.getTeamName1(), match.getTeamName2(), match.getScore1(), match.getScore2(), match.getShortContent(), match.getNotes(), match.getLeagueId());
	}

	public void delete(int id) {
		String sql = "DELETE FROM match WHERE id = " + id;
		jdbcTemplate.update(sql);
	}

	public void update(Match match) {
		String sql = "UPDATE match SET teamName1 = ?, teamName2 = ?, score1 = ?, score2 = ?, shortContent = ?, notes = ?, leaguesId = ? WHERE id = ? ";
		jdbcTemplate.update(sql, match.getTeamName1(), match.getTeamName2(), match.getScore1(), match.getScore2(), match.getShortContent(), match.getNotes(), match.getLeagueId());
	}

	public Match findById(int id) {
		String sql = "SELECT * FROM match WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new MatchMapper(), id);
	}

	public List<Match> findAll() {
		String sql = "SELECT * FROM match";
		return jdbcTemplate.query(sql, new MatchMapper());
	}

}
