package chap08;

public class Car {
	private String name;
	private int speed;
	
	//stop
	public boolean getStop() {
		return speed == 0;
	}
	
	// name
	public String getName() {
		return name;
	}
	
	//name
	public void setName(String name) {
		this.name = name;
	}
	
	//speed
	public int getSpeed() {
		return speed;
	}
	
	//speed
	public void setSpeed(int speed) {
		this.speed = speed;
	}
}
