package minutes.com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import minutes.com.entities.Message;
import minutes.com.mappers.MessageMapper;

@Repository
@Transactional
public class MessageDAO {
	  @Autowired
	  private JdbcTemplate jdbcTemplate;
	  public void save(Message message) {
	    String sql = "INSERT INTO message (senderName, email, content) VALUES (?, ?, ?)";
	    jdbcTemplate.update(sql, message.getSenderName(), message.getEmail(), message.getContent());
	  }
	  public void delete(int id) {
	    String sql = "DELETE FROM message WHERE id = " + id;
	    jdbcTemplate.update(sql);
	  }
	  
	  public void update(Message message) {
	    String sql = "UPDATE message SET senderName = ?, email = ?, content = ? WHERE id = ? ";
	    jdbcTemplate.update(sql, message.getSenderName(), message.getEmail(), message.getContent(), message.getId());
	  }
	  public Message findById(int id) {
	    String sql = "SELECT * FROM message WHERE id = ?";
	    return jdbcTemplate.queryForObject(sql, new MessageMapper(), id);
	  }
	  public List<Message> findAll() {
	    String sql = "SELECT * FROM message";
	    return jdbcTemplate.query(sql, new MessageMapper());
	  }

}
