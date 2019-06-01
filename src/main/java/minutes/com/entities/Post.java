package minutes.com.entities;

import java.sql.Date;
import java.util.ArrayList;

public class Post {
	private int id;
	private String title;
	private String content;
	private int author;
	private String postType;
	private Date postTime;
	private Date updateTime;
	private ArrayList<String> imageLink = new ArrayList<String>();
	private ArrayList<String> socialLink = new ArrayList<String>();

	public Post() {
	};

	public Post(int id, String title, String content, int author, String postType, Date PostTime, Date UpdateTime,
			ArrayList<String> ImageLink, ArrayList<String> SocialLink, ArrayList<String> tags) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.author = author;
		this.postType = postType;
		postTime = PostTime;
		updateTime = UpdateTime;
		imageLink = ImageLink;
		socialLink = SocialLink;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getAuthor() {
		return author;
	}

	public void setAuthor(int author) {
		this.author = author;
	}

	public String getPostType() {
		return postType;
	}

	public void setPostType(String postType) {
		this.postType = postType;
	}

	public Date getPostTime() {
		return postTime;
	}

	public void setPostTime(Date PostTime) {
		postTime = PostTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date UpdateTime) {
		updateTime = UpdateTime;
	}

	public ArrayList<String> getImageLink() {
		return imageLink;
	}

	public void setImageLink(ArrayList<String> ImageLink) {
		imageLink = ImageLink;
	}

	public ArrayList<String> getSocialLink() {
		return socialLink;
	}

	public void setSocialLink(ArrayList<String> SocialLink) {
		socialLink = SocialLink;
	}

}
