package minutes.com.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import minutes.com.entities.Post;

public class PostMapper implements RowMapper<Post> {
	
	public Post mapRow(ResultSet rs, int rowNum) throws SQLException {
	    Post post = new Post();
	    post.setTitle(rs.getString("title"));
	    post.setContent(rs.getString("content"));
	    post.setAuthor(rs.getInt("author"));
	    post.setPostType(rs.getString("postType"));
	    post.setPostTime(rs.getDate("postTime"));
	    post.setUpdateTime(rs.getDate("updateTime"));
	    post.setTags(rs.getArray("tags"));
	    return post;
	  }
}
