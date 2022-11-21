package p2;

public class Sinhvien extends Nguoi{
	public String nganh;
	public String khoa;
	public String namnhaphoc;
	public String namtotnghiep;
	public Sinhvien() {
		
	}
	public Sinhvien(String maso ,String hoten,String ngaysinh,String diachi,String nganh,String khoa,String namnhaphoc,String namtotnghiep) {
		super(hoten, ngaysinh, diachi);
	    this.nganh=nganh;
	    this.khoa=khoa;
	    this.namnhaphoc=namnhaphoc;
	    this.namtotnghiep=namtotnghiep;
	}
	public String getNganh() {
		return nganh;
	}
	public String getKhoa() {
		return khoa;
	}
	public String getNamnhaphoc() {
		return namnhaphoc;
	}
	public String getNamtotnghiep() {
		return namtotnghiep;
	}
	public String tostring() {
		System.out.println(super.tostring());
		return nganh +" "+khoa+" "+namnhaphoc+" "+namtotnghiep;
	}
}
