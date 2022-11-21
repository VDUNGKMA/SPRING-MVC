package b5;

import java.security.PublicKey;

public class TamGiac extends Diem{
  public TamGiac(float x,float y) {
	  super(x, y);
  }
  public static void TamGiac() {
	  Diem d1=new Diem(3, 5);
	  Diem d2=new Diem(3,6);
	  Diem d3=new Diem(4,2);
	
  }
  public void checktamgiac(Diem d1, Diem d2,Diem d3) {
	  double kc1=khoangcach(d2, d1);
  }

}
