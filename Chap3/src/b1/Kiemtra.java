package b1;

public class Kiemtra {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Hinhtru a =new Hinhtru(4.6f, 5.0f);
		System.out.println("thể tích hình trụ:"+a.Thetich());
		System.out.println("hình trụ\n"+a.toString());
		Hinhtron b=new Hinhtron();
		b.setBankinh(4.2f);
		System.out.println("diện tích hình tròn = "+b.dientich());
		System.out.println(b.tostring());
	}

}
