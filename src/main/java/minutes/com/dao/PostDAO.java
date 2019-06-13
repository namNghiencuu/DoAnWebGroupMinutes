package minutes.com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import minutes.com.entities.Post;
import minutes.com.mappers.PostMapper;

@Repository
@Transactional
public class PostDAO {
	  @Autowired
	  private JdbcTemplate jdbcTemplate;
	  public void save(Post post) {
	    String sql = "INSERT INTO post (title, content, author, postType, postTime, imageLink, videoLink) VALUES (?,?, ?,?, ?,?, ?,?, ?)";
	    jdbcTemplate.update(sql, post.getTitle(), post.getContent(), post.getAuthor(), post.getPostType(), post.getPostTime(), post.getImageLink(), post.getVideoLink());
	  }
	  public void delete(Integer id) {
	    String sql = "DELETE FROM post WHERE id = " + id;
	    jdbcTemplate.update(sql);
	  }
	  
	  public void update(Post post) {
	    String sql = "UPDATE post SET title = ?, content = ?, UpdateTime = ?, ImageLink = ? WHERE id = ? ";
	    jdbcTemplate.update(sql, post.getTitle(), post.getContent(), post.getUpdateTime(),  post.getImageLink(), post.getVideoLink(), post.getId());
	  }
	  public Post findById(Integer id) {
	    String sql = "SELECT * FROM post WHERE id = ?";
	    return jdbcTemplate.queryForObject(sql, new PostMapper(), id);
	  }
	  public List<Post> findAll() {
	    String sql = "SELECT * FROM post";
	    return jdbcTemplate.query(sql, new PostMapper());
	  }
	  public List<Post> findTopPost(Integer number) {
		    String sql = String.format("SELECT * FROM post WHERE postType = \"ARTICLE\" LIMIT 0, %d", number);
		    return jdbcTemplate.query(sql, new PostMapper());
		  }
	  public List<Post> findTopVideoPost(Integer number) {
		    String sql = String.format("SELECT * FROM post WHERE postType = \"VIDEO\" LIMIT 0, %d", number);
		    return jdbcTemplate.query(sql, new PostMapper());
		  }
}
