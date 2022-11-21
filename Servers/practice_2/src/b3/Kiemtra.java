package b3;

public class Kiemtra{
	public static void main(String[] args) {
		Taikhoan a=new Taikhoan();
		a.setHoten("chu van a");
		a.setSotien(15000);
		a.sotaikhoan="ST5GG";
		System.out.println("HT:"+a.getHoten());
		System.out.println("STK: "+a.sotaikhoan);
		System.out.println("số tiền nạp:"+a.naptien(5000));
		System.out.println("số tiền còn lại:"+a.getSotien());
		System.out.println("số tiên chuyển: "+a.chuyentien(10000));
		System.out.println("số tiền rút: "+a.ruttien(5000));
		System.out.println("số tiền còn lại:"+a.getSotien());
	}
}