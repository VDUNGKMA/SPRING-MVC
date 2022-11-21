package b2;

public class HoaDon {
	public String mahoadon;
	public String mota;
	public int soluong;
	private float DonGia;
	
	public HoaDon(String mota,int soluong,float DonGia) {
		this.mota=mota;
		this.soluong=soluong;
		this.DonGia=DonGia;
	}

	public String getMahoadon() {
		return mahoadon;
	}

	public String getMota() {
		return mota;
	}

	public int getSoluong() {
		return soluong;
	}

	public float getDonGia() {
		return DonGia;
	}
	public float tongtien() {
		return this.DonGia*this.soluong;
	}
	
	

}
