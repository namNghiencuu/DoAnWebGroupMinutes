package minutes.com.entities;

import java.sql.Date;
import java.util.ArrayList;

public class Match {
	private Integer id;
	private String teamName1;
	private String teamName2;
	private Integer score1;
	private Integer score2;
	private String shortContent;
	private String notes;
	private Date date;
	private Integer leagueId;

	public Match() {
	}

	public Match(String teamName1, String teamName2, Integer score1, Integer score2, String shortContent,
			String notes, Date date, Integer leagueId) {
		super();
		this.teamName1 = teamName1;
		this.teamName2 = teamName2;
		this.score1 = score1 != null ? score1 : 0;
		this.score2 = score2 != null ? score2 : 0;
		this.shortContent = shortContent;
		this.notes = notes;
		this.date = date;
		this.leagueId = leagueId;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTeamName1() {
		return teamName1;
	}

	public void setTeamName1(String teamName1) {
		this.teamName1 = teamName1;
	}

	public String getTeamName2() {
		return teamName2;
	}

	public void setTeamName2(String teamName2) {
		this.teamName2 = teamName2;
	}

	public Integer getScore1() {
		return score1;
	}

	public void setScore1(Integer score1) {
		this.score1 = score1;
	}

	public Integer getScore2() {
		return score2;
	}

	public void setScore2(Integer score2) {
		this.score2 = score2;
	}

	public String getShortContent() {
		return shortContent;
	}

	public void setShortContent(String shortContent) {
		this.shortContent = shortContent;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Integer getLeagueId() {
		return leagueId;
	}

	public void setLeagueId(Integer leagueId) {
		this.leagueId = leagueId;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

}
