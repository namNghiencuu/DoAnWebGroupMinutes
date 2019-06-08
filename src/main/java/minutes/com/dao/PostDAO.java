package minutes.com.dao;

import java.sql.Date;
import java.util.ArrayList;
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
	    String sql = "INSERT INTO post (id, title, content, author, postType, PostTime, UpdateTime, ImageLink, SocialLink, tags) VALUES (?, ?,?, ?,?, ?,?, ?,?, ?)";
	    jdbcTemplate.update(sql, post.getId(), post.getTitle(), post.getContent(), post.getAuthor(), post.getPostType(), post.getPostTime(), post.getUpdateTime(), post.getImageLink(), post.getSocialLink(),post.getTags());
	  }
	  public void delete(int id) {
	    String sql = "DELETE FROM post WHERE id = " + id;
	    jdbcTemplate.update(sql);
	  }
	  
	  public void update(Post post) {
	    String sql = "UPDATE customer SET title = ?, content = ?, postType = ?, UpdateTime = ?, ImageLink = ?, SocialLink = ? WHERE id = ? ";
	    jdbcTemplate.update(sql, post.getTitle(), post.getContent(), post.getPostType(), post.getUpdateTime(),  post.getImageLink(), post.getSocialLink(), post.getId());
	  }
	  public Post findById(int id) {
	    String sql = "SELECT * FROM post WHERE id = ?";
	    return jdbcTemplate.queryForObject(sql, new PostMapper(), id);
	  }
	  public List<Post> findAll() {
	    String sql = "SELECT * FROM post";
	    return jdbcTemplate.query(sql, new PostMapper());
	  }
}
