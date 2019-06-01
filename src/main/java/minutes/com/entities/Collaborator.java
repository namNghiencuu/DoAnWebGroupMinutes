package minutes.com.entities;

import java.util.ArrayList;

public class Collaborator {
	private int id;
	private String email;
	private String password;
	private ArrayList<String> todoList = new ArrayList<String>();

	public Collaborator() {
	}
	
	
	public Collaborator(int id, String email, String password, ArrayList<String> todoList) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
		this.todoList = todoList;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public ArrayList<String> getTodoList() {
		return todoList;
	}

	public void setTodoList(ArrayList<String> todoList) {
		this.todoList = todoList;
	};

	
}
