package p2;

public class Kiemtra {
	public static void main(String[] args) {
		Sinhvien aSinhvien=new Sinhvien("001","abc", "30-04-2001","hanoi","dt","ct"
			, "05-02-2019","07-03-2024");
		System.out.println(aSinhvien.tostring());
		Giaovien b =new Giaovien("gt","30-05-1099","qn","toan tin","dao tao","gv","tien si",100000404.65f);
		System.out.println(b.tostring());
	}
	
	
}
