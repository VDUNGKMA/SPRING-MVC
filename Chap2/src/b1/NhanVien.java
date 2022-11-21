package b1;

public class NhanVien {
	public String Manv;
	public String hoten;
	public float luong;
	
	public NhanVien(String hoten,float luong) {
		this.hoten=hoten;
		this.luong=luong;
	}
	public String getManv() {
		return Manv;
	}
	public String getHoten() {
		return hoten;
	}
	public float getLuong() {
		return luong;
	}
	public float luong_theo_nam() {
		return 12*luong;
	}
	public float tyletangluong() {
		return luong+10/100*luong;
	}

}
