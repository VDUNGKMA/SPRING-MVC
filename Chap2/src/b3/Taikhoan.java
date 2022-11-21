package b3;

public abstract class Taikhoan {

	public String sotaikhoan;
	public String hoten;
	private float sotien;
	public String getSotaikhoan() {
		return sotaikhoan;
	}
	
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public float getSotien() {
		return sotien;
	}
	public void setSotien(float sotien) {
		this.sotien = sotien;
	}
	public float naptien(float sotiennap) {
		sotien+=sotiennap;
		return sotiennap;
	}
	public float ruttien(float sotienrut) {
		sotien-=sotienrut;
		return sotienrut;
	}
	public float chuyentien(float sotienchuyen) {
		sotien-=sotienchuyen;
		return sotienchuyen;
	}
	

}
