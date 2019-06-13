package minutes.com.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.jdbc.core.RowMapper;

import minutes.com.entities.Post;

public class PostMapper implements RowMapper<Post> {
	
	public Post mapRow(ResultSet rs, int rowNum) throws SQLException {
	    Post post = new Post();
	    post.setId(rs.getInt("id"));
	    post.setTitle(rs.getString("title"));
	    post.setContent(rs.getString("content"));
	    post.setAuthor(1);
	    post.setPostType(rs.getString("postType"));
	    post.setImageLink(rs.getString("imageLink"));
	    post.setPostTime();
	    post.setUpdateTime();
	    post.setVideoLink(rs.getString("videoLink"));
	    return post;
	  }
}
