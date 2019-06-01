package minutes.com.entities;

import java.util.ArrayList;

public class Competition {
	private int id;
	private String type;
	private String name;
	private ArrayList<Integer> teamId = new ArrayList<Integer>();

	public Competition() {
	}

	public Competition(int id, String type, String name, ArrayList<Integer> teamId) {
		super();
		this.id = id;
		this.type = type;
		this.name = name;
		this.teamId = teamId;
	};

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public ArrayList<Integer> getTeamId() {
		return teamId;
	}

	public void setTeamId(ArrayList<Integer> teamId) {
		this.teamId = teamId;
	}
}
