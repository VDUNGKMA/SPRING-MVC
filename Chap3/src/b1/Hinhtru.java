package b1;

import java.security.PublicKey;

public class Hinhtru extends Hinhtron{
	
   public float chieucao;
	
   public float getChieucao() {
		return chieucao;
	}
   public void setChieucao(float chieucao) {
		this.chieucao = chieucao;
	}
   public Hinhtru(float bankinh,float chieucao) {
		super.bankinh=bankinh; // truy cập vào phương thức lớp cha,tận dùng và bảo trì code
		this.chieucao=chieucao;
    }
   public double Thetich() {
	   return pi*Math.pow(bankinh,2)*chieucao;
   }
   
   public String toString() {
	   super.toString();
       return "bán kính= "+ bankinh +"\nchiều cao= " +chieucao;
   }

}
