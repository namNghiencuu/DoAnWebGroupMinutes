package minutes.com.entities;

import java.util.ArrayList;

public class Admin {
	private int id;
	private String userName;
	private String password;
	private ArrayList<String> todolist;
	
	public Admin() {
	}

	
	public Admin(String userName, String password, ArrayList<String> todolist) {
		super();
		this.userName = userName;
		this.password = password;
		this.todolist = todolist;
	}


	public int getId() {
		return id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public ArrayList<String> getTodolist() {
		return todolist;
	}

	public void setTodolist(ArrayList<String> todolist) {
		this.todolist = todolist;
	}
	
	
}
