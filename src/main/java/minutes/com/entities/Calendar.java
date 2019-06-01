package minutes.com.entities;

import java.sql.Date;
import java.util.ArrayList;

public class Calendar {
	private Date dateTime;
	private int month;
	private int year;
	private ArrayList<Integer> matchId = new ArrayList<Integer>();
	
	public Calendar() {
	}
	
	public Calendar(Date dateTime, int month, int year, ArrayList<Integer> matchId) {
		super();
		this.dateTime = dateTime;
		this.month = month;
		this.year = year;
		this.matchId = matchId;
	}

	public Date getDateTime() {
		return dateTime;
	}
	public void setDateTime(Date dateTime) {
		this.dateTime = dateTime;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}

	public ArrayList<Integer> getMatchId() {
		return matchId;
	}

	public void setMatchId(ArrayList<Integer> matchId) {
		this.matchId = matchId;
	};

	
}
