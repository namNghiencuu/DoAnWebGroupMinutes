package minutes.com.entities;

import java.sql.Date;
import java.util.ArrayList;

public class Subscriber {
	private int id;
	private String title;
	private String content;
	private int author;
	private String postType;
	private Date PostTime;
	private Date UpdateTime;
	private ArrayList<String> ImageLink = new ArrayList<String>();
	private ArrayList<String> SocialLink = new ArrayList<String>();

	public Subscriber() {
	};

	public Subscriber(int id, String title, String content, int author, String postType, Date postTime, Date updateTime,
			ArrayList<String> imageLink, ArrayList<String> socialLink, ArrayList<String> tags) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.author = author;
		this.postType = postType;
		PostTime = postTime;
		UpdateTime = updateTime;
		ImageLink = imageLink;
		SocialLink = socialLink;
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
		return PostTime;
	}

	public void setPostTime(Date postTime) {
		PostTime = postTime;
	}

	public Date getUpdateTime() {
		return UpdateTime;
	}

	public void setUpdateTime(Date updateTime) {
		UpdateTime = updateTime;
	}

	public ArrayList<String> getImageLink() {
		return ImageLink;
	}

	public void setImageLink(ArrayList<String> imageLink) {
		ImageLink = imageLink;
	}

	public ArrayList<String> getSocialLink() {
		return SocialLink;
	}

	public void setSocialLink(ArrayList<String> socialLink) {
		SocialLink = socialLink;
	}

}
