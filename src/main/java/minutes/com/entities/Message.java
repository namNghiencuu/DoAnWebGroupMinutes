package minutes.com.entities;

public class Message {

	private int id;
	private String senderName;
	private String email;
	private String content;

	public Message() {
	}

	public Message(String senderName, String email, String content) {
		super();
		this.senderName = senderName;
		this.email = email;
		this.content = content;
	}

	public int getId() {
		return id;
	}

	public String getSenderName() {
		return senderName;
	}

	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	};

}
