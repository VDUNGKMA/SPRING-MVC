package b1;

public class Hinhtron {
	public float bankinh;
	public static float pi=3.14f;
	public Hinhtron() {
	
} 
	
	public float getBankinh() {
		return bankinh;
	}


	public void setBankinh(float bankinh) {
		this.bankinh = bankinh;
	}
	public double dientich() {
		return pi*Math.pow(bankinh,2);
	}
	public String tostring() {
		return "bán kính= "+ bankinh;
	}
}