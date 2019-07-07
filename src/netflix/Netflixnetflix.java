package netflix;

public class Netflixnetflix {

	public static void main(String[] args) {
		Movie endgame = new Movie("Endgame", 5);
		Movie thesoniclifeactionmovie = new Movie("Sonic", 10);
		Movie ffh = new Movie("Spider-Man Far From Home", 5);
		Movie asib = new Movie("A star is born", 0);
		Movie captainmarvel = new Movie("Captain Marvel", 5);
	System.out.println(endgame.getTicketPrice());
	NetflixQueue nq = new NetflixQueue();
	nq.addMovie(endgame);
	nq.addMovie(thesoniclifeactionmovie);
	nq.addMovie(ffh);
	nq.addMovie(asib);
	nq.addMovie(captainmarvel);
	nq.printMovies();
	nq.sortMoviesByRating();
	System.out.println(nq.getBestMovie());
	System.out.println(nq.getMovie(1));
	}
}
