package p2;


public class Giaovien extends Nguoi {
	public String bomon;
	public String khoa;
	public String hocvi;
	public String hocham;
	public float luong;
	public Giaovien() {
		
	}
	public Giaovien(String hoten,String ngaysinh,String diachi,String bomon,String khoa,String hocvi,String hocham,float luong) {
		super(hoten, ngaysinh, diachi);
		this.bomon=bomon;
		this.khoa=khoa;
		this.hocvi=hocvi;
		this.hocham=hocham;
		this.luong=luong;
	}
	public String getBomon() {
		return bomon;
	}
	public String getKhoa() {
		return khoa;
	}
	public String getHocvi() {
		return hocvi;
	}
	public String getHocham() {
		return hocham;
	}
	public float getLuong() {
		return luong;
	}
	public String tostring() {
		System.out.println(super.tostring());
		return bomon+" "+khoa+" "+hocvi+" "+hocham+" "+luong;
	}
}
