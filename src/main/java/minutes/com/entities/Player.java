package minutes.com.entities;

public class Player {
	private int id;
	private String name;
	private int age;
	private int shirtNumber;
	private String position;
	private int Club;
	
	public Player() {
	}

	public Player(int id, String name, int age, int shirtNumber, String position) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
		this.shirtNumber = shirtNumber;
		this.position = position;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getShirtNumber() {
		return shirtNumber;
	}

	public void setShirtNumber(int shirtNumber) {
		this.shirtNumber = shirtNumber;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public int getClub() {
		return Club;
	}

	public void setClub(int club) {
		Club = club;
	};
	

}
