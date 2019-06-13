package minutes.com.entities;

import java.time.LocalDateTime;

public class Post {
	private int id;
	private String title;
	private String content;
	private int author;
	private String postType;
	private LocalDateTime postTime;
	private LocalDateTime updateTime;
	private String imageLink;
	private String videoLink;

	public Post() {
	};

	public Post(String title, String content, int author, String postType, String imageLink, String videoLink) {
		super();
		this.title = title;
		this.content = content;
		this.author = author;
		this.postType = postType;
		this.postTime = LocalDateTime.now();
		this.updateTime = LocalDateTime.now();
		this.imageLink = imageLink;
		this.videoLink = videoLink;
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

	public LocalDateTime getPostTime() {
		return postTime;
	}

	public void setImageLink(String ImageLink) {
		imageLink = ImageLink;
	}

	public LocalDateTime getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime() {
		this.updateTime = LocalDateTime.now();
	}

	public String getVideoLink() {
		return videoLink;
	}

	public void setVideoLink(String videoLink) {
		this.videoLink = videoLink;
	}

	public String getImageLink() {
		return imageLink;
	}

	public void setPostTime() {
		this.postTime = LocalDateTime.now();;
	}

}
