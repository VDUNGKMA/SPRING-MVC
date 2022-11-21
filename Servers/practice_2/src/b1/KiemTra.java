package b1;

public class KiemTra {
	public static void main(String[] args) {
		NhanVien a = new NhanVien("A", 14023f);
		a.Manv="ct0353";
		System.out.println(a.getHoten());
		System.out.println(a.getLuong());
		System.out.println(a.getManv());
		System.out.println(a.luong_theo_nam());
		System.out.println(a.tyletangluong());
	}

}
