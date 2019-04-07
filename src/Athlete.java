public class Athlete {

	static int nextBibNumber;
	static String raceLocation = "New York";
	static String raceStartTime = "9.00am";

	String name;
	int speed;
	int bibNumber;

	Athlete(String name, int speed) {
		this.name = name;
		this.speed = speed;
	bibNumber=nextBibNumber;
	nextBibNumber++;
	
	}

	public static void main(String[] args) {
		Athlete a = new Athlete("Bob", 10); // print their names, bibNumbers, and the location of // their race. }
		Athlete b = new Athlete("Tim", 10);
		System.out.println(a.name);
		System.out.println(a.bibNumber);
		System.out.println(a.raceLocation);
		raceLocation="Pacific OCean";
		System.out.println(b.name);
		System.out.println(b.bibNumber);
		System.out.println(b.raceLocation);
	}
}