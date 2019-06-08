package minutes.com.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import minutes.com.entities.Message;

public class MessageMapper implements RowMapper<Message> {
	
	public Message mapRow(ResultSet rs, int rowNum) throws SQLException {
	    Message message = new Message();
	    message.setSenderName(rs.getString("senderName"));
	    message.setEmail(rs.getString("email"));
	    message.setContent(rs.getString("content"));
	    return message;
	  }
	
}
