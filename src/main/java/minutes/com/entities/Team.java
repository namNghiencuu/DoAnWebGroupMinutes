package minutes.com.entities;

public class Team {
	private int id;
	private String name;
	private String nation;
	private String logo;
	private String coach;

	public Team() {
	}
	
	public Team(String name, String nation, String logo, String coach) {
		super();
		this.name = name;
		this.nation = nation;
		this.logo = logo;
		this.coach = coach;
	}

	public void setId(int id) {
		this.id = id;
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


	public String getNation() {
		return nation;
	}


	public void setNation(String nation) {
		this.nation = nation;
	}


	public String getCoach() {
		return coach;
	}


	public void setCoach(String coach) {
		this.coach = coach;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}
}
