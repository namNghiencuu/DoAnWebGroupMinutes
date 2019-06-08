package minutes.com.entities;

import java.util.ArrayList;

public class Team {
	private int id;
	private String name;
	private ArrayList<Integer> league = new ArrayList<Integer>();
	private ArrayList<Integer> players = new ArrayList<Integer>();
	private ArrayList<String> tags = new ArrayList<String>();

	public Team() {
	}

	public Team(String name, ArrayList<Integer> league, ArrayList<Integer> players, ArrayList<String> tags) {
		super();
		this.name = name;
		this.league = league;
		this.players = players;
		this.tags = tags;
	}



	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public ArrayList<Integer> getLeague() {
		return league;
	}

	public void setLeague(ArrayList<Integer> league) {
		this.league = league;
	}

	public ArrayList<Integer> getPlayers() {
		return players;
	}

	public void setPlayers(ArrayList<Integer> players) {
		this.players = players;
	}

	public ArrayList<String> getTags() {
		return tags;
	}

	public void setTags(ArrayList<String> tags) {
		this.tags = tags;
	};

	
}
