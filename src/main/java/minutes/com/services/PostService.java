package minutes.com.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import minutes.com.dao.PostDAO;
import minutes.com.entities.Post;

@Service
@Transactional
public class PostService {
	@Autowired
	private PostDAO postDAO;

	public List<Post> findTopPost(Integer number) {
		return postDAO.findTopPost(number);
	}

	public List<Post> findTopVideoPost(Integer number) {
		return postDAO.findTopVideoPost(number);
	}
	
	public List<Post> findAll() {
		return postDAO.findAll();
	}

	public Post findById(Integer id) {
		return postDAO.findById(id);
	}

	public void save(Post post) {
		// validate business
		postDAO.save(post);
	}

	public void update(Post post) {
		// validate business
		postDAO.update(post);
	}

	public void delete(Integer id) {
		// validate business
		postDAO.delete(id);
	}
}
