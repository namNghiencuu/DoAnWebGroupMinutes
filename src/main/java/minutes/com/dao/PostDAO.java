package minutes.com.dao;

import java.sql.Date;
import java.util.ArrayList;

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
	    String sql = "INSERT INTO post (id, title, content, author, postType, PostTime, UpdateTime, ImageLink, SocialLink, tags) VALUES (?, ?)";
	    jdbcTemplate.update(sql, post.getId(), post.getContent(), post.getAuthor(), post.getPostType(), post.getPostTime(), post.getContent());
	  }
	  public void delete(int id) {
	    String sql = "DELETE FROM post WHERE id = " + id;
	    jdbcTemplate.update(sql);
	  }
	  
	  public void update(Post post) {
	    String sql = "UPDATE customer SET name = ?, address = ? WHERE id = ? ";
	    jdbcTemplate.update(sql, customer.getName(), customer.getAddress(), customer.getId());
	  }
	  public Customer findById(int id) {
	    String sql = "SELECT * FROM customer WHERE id = ?";
	    return jdbcTemplate.queryForObject(sql, new CustomerMapper(), id);
	  }
	  public List<Customer> findAll() {
	    String sql = "SELECT * FROM customer";
	    return jdbcTemplate.query(sql, new CustomerMapper());
	  }
}
