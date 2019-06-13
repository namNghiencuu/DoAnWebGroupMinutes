package minutes.com.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import minutes.com.dao.PlayerDAO;
import minutes.com.entities.Player;

@Service
@Transactional
public class PlayerService {
	@Autowired
	private PlayerDAO playerDAO;

	public List<Player> findAll() {
		return playerDAO.findAll();
	}

	public Player findById(int id) {
		return playerDAO.findById(id);
	}

	public void save(Player player) {
		// validate business
		playerDAO.save(player);
	}

	public void update(Player player) {
		// validate business
		playerDAO.update(player);
	}

	public void delete(int id) {
		// validate business
		playerDAO.delete(id);
	}

	public List<Player> findByTeamIdAndPosition(int id, String position) {
		// validate business
		return playerDAO.findByTeamIdAndPosition(id, position);
	}
}
