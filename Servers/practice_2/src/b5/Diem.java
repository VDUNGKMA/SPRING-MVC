package b5;

public class Diem {
	public float x;
	public float y;
	public Diem() {
		
	}
	public Diem(float x,float y) {
		this.x=x;
		this.x=y;
	}
	public float getX() {
		return x;
	}
	public float getY() {
		return y;
	} 
	public double kc(Diem d1,Diem d2) {
		
	}
	public double khoangcach(float a,float b) {
		float k1=a-x;
		float k2=b-y;
		return Math.sqrt((double)k1*k1+k2*k2);
	}
	public void toado() {
		System.out.println("x="+x);
		System.out.println("y"+y);
	}

}
