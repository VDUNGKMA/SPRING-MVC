package b2;

public class Kiemtra {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HoaDon a =new HoaDon("laptop", 5, 4232.5f);
		a.mahoadon="D5JKFG";
		System.out.println(a.getMahoadon());
		System.out.println(a.getMota());
		System.out.println(a.getSoluong());
		System.out.println(a.getDonGia());
		System.out.println("Tổng tiền : "+a.tongtien());

	}

}
