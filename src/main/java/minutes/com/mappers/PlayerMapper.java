package minutes.com.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.jdbc.core.RowMapper;

import minutes.com.entities.Post;
import minutes.com.services.ArrayToArrayList;

public class PlayerMapper implements RowMapper<Post> {
	
	public Post mapRow(ResultSet rs, int rowNum) throws SQLException {
		ArrayToArrayList atal = new ArrayToArrayList();
	    Post post = new Post();
	    post.setTitle(rs.getString("title"));
	    post.setContent(rs.getString("content"));
	    post.setAuthor(rs.getInt("author"));
	    post.setPostType(rs.getString("postType"));
	    post.setPostTime(rs.getDate("postTime"));
	    post.setUpdateTime(rs.getDate("updateTime"));
	    post.setTags(atal.arrayToIntArrayList(rs.getArray("tags")));
	    post.setImageLink(atal.arrayToStringArrayList(rs.getArray("imageLink")));
	    post.setSocialLink(atal.arrayToStringArrayList(rs.getArray("socialLink")));
	    return post;
	  }
}
