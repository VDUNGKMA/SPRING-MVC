package p2;


public class Nguoi {
	private String maso;
	public String hoten;
	public String ngaysinh;
	public String diachi;
	public Nguoi() {
		
	}
	public Nguoi(String hoten,String ngaysinh,String diachi) {
		this.hoten=hoten;
		this.ngaysinh=ngaysinh;
		this.diachi=diachi;
	}
	public String getMaso() {
		return maso;
	}
	public String getHoten() {
		return hoten;
	}
	public String getNgaysinh() {
		return ngaysinh;
	}
	public String getDiachi() {
		return diachi;
	}
	public String tostring() {
		return maso +" "+hoten +" "+ngaysinh +"diachi";
	}
	
	
}
