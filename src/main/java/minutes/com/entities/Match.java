package minutes.com.entities;

import java.sql.Date;
import java.util.ArrayList;

public class Match {
	private int id;
	private int team1;
	private int team2;
	private ArrayList<Integer> score = new ArrayList<Integer>();
	private String shortContent;
	private Date date;
	private int league;

	public Match() {
	}

	public Match(int id, int team1, int team2, ArrayList<Integer> score, String shortContent, java.sql.Date date,
			int league) {
		super();
		this.id = id;
		this.team1 = team1;
		this.team2 = team2;
		this.score = score;
		this.shortContent = shortContent;
		this.date = date;
		this.league = league;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getTeam1() {
		return team1;
	}

	public void setTeam1(int team1) {
		this.team1 = team1;
	}

	public int getTeam2() {
		return team2;
	}

	public void setTeam2(int team2) {
		this.team2 = team2;
	}

	public ArrayList<Integer> getScore() {
		return score;
	}

	public void setScore(ArrayList<Integer> score) {
		this.score = score;
	}

	public String getShortContent() {
		return shortContent;
	}

	public void setShortContent(String shortContent) {
		this.shortContent = shortContent;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getLeague() {
		return league;
	}

	public void setLeague(int league) {
		this.league = league;
	};

	
}
