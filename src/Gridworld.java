import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld {
	public static void main(String[] args) {
		World w = new World();
		w.show();
		Location l = new Location(5, 5);

		Bug b = new Bug();
		w.add(l, b);
		Bug bb = new Bug();
		Random r = new Random();
		int x = r.nextInt(10);
		Random rr = new Random();
		int y = r.nextInt(10);
		Location ll = new Location(x, y);
		w.add(ll, bb);
		Color bbb = new Color(0, 200, 255);
		bb.setColor(bbb);
		for (int i = 0; i < 2; i++) {
			bb.turn();
		Flower f0 = new Flower();
		Flower f1= new Flower();
		Location lf0 = new Location(x,y-1);
		Location lf1= new Location(x,y+1);
		for (int j = 0; j < 10; j++) {
			for (int j2 = 0; j2 < 10; j2++) {
				Location l1= new Location(j,j2);
			w.add(l1, f1);
			}
		}
		}

	}
}