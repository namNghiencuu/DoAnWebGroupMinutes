package minutes.com.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import minutes.com.dao.MessageDAO;
import minutes.com.entities.Message;

@Service
@Transactional
public class MessageService {
	
	  @Autowired
	  private MessageDAO messageDAO;
	  
	  public List<Message> findAll() {
	    return messageDAO.findAll();
	  }
	  public Message findById(int id) {
	    return messageDAO.findById(id);
	  }
	  
	  public void save(Message message){
	    // validate business
	    messageDAO.save(message);
	  }
	  public void update(Message message){
	    // validate business
	    messageDAO.update(message);
	  }
	  
	  public void delete(int id){
	    // validate business
	    messageDAO.delete(id);
	  }
}
