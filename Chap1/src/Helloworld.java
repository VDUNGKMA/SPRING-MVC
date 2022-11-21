import java.util.Scanner;

public class Helloworld {

	public static void bai1() {
		System.out.println("Welcome to the World of Java");
	}

	public static void bai2() {
		double a, b, c, x1, x2, delta;
		String ketQua = "";
		Scanner scanner = new Scanner(System.in);
		do {
			System.out.print("Nhập a (a # 0): ");
			a = scanner.nextDouble();
		} while (a == 0);
		System.out.print("Nhập b: ");
		b = scanner.nextDouble();
		System.out.print("Nhập c: ");
		c = scanner.nextDouble();
		System.out.println("Phương trình bậc hai bạn vừa nhập có dạng: " + a + "x^2 + " + b + "x + " + c + " = 0");

		delta = Math.pow(b, 2) - 4 * a * c;

		if (delta < 0) {
			ketQua = "Phương trình vô nghiệm!";
		} else if (delta == 0) {
			x1 = x2 = -b / (2 * a);
			System.out.println("Phương trinh có nghiệm kép là x1 = x2 = " + x1);
		} else {
			x1 = (-b + Math.sqrt(delta)) / (2 * a);
			x2 = (-b - Math.sqrt(delta)) / (2 * a);
			ketQua = "Phương trình có 2 nghiệm x1 = " + x1 + " và x2 = " + x2;
		}
		System.out.println(ketQua);
	}

	public static void bai3() {

		int S = 0;
		int i = 0;
		for (i = 7; i < 100; i = i + 7) {
			S = S + i;
		}
		System.out.println("tổng các bội của 7 nằm giữa 1 và 100:" + "" + S);
	}

	public static void bai5() {

		int i = 0;
		int j = 0;
		int Ketqua = 0;
		for (i = 1; i <= 7; i++) {
			int S = 1;
			for (j = 1; j <= i; j++) {
				S = S * j;
			}
			Ketqua = S + Ketqua;
		}
		System.out.println("tổng 7 số hạng giai thừa:" + "" + Ketqua);
	}

	public static int fibonacci(int n) {
		int f0 = 0;
		int f1 = 1;
		int fn = 1;

		if (n < 0) {
			return -1;
		} else if (n == 0 || n == 1) {
			return n;
		} else {
			for (int i = 2; i < n; i++) {
				f0 = f1;
				f1 = fn;
				fn = f0 + f1;
			}
		}
		return fn;
	}

	public static void bai6() {
		System.out.println("10 số đầu tiên của dãy số fibonacci: ");
		for (int i = 0; i < 10; i++) {
			System.out.print(fibonacci(i) + " ");
		}
	}

	public static int checknguyento(int a) {
		int dem = 0;
		if (a < 2)
			return 0;
		else if (a == 2)
			return 1;
		else {
			for (int i = 2; i < a; i++) {
				if (a % i == 0)
					dem++;
			}
			if (dem == 0)
				return 1;
			else
				return 0;
		}
	}

	public static void bai7() {
		for (int i = 2; i <= 100; i++) {
			if (checknguyento(i) == 1)
				System.out.printf(i + "\t");
		}
	}

	public static void bai8() {
		int n;
		Scanner nhap = new Scanner(System.in);
		System.out.println("Nhập số nguyên: ");
		n = nhap.nextInt();
		while (n < 2) {
			System.out.println("số không hợp lệ nhập lại: ");
			n = nhap.nextInt();
		}
		for (int i = 2; i <= n; i++) {
			while (n % i == 0) {
				n = n / i;
				if (n == 1)
					System.out.print(i);
				else
					System.out.print(i + " x ");
			}
			if (n == 1)
				break;
		}
	}

	public static int UCLN(int a, int b) {
		int r = a % b;
		while (r != 0) {
			a = b;
			b = r;
			r = a % b;
		}
		return b;
	}

	public static void bai10() {
		Scanner bien = new Scanner(System.in);
		int a, b;
		System.out.println("nhập 2 số a và b ");
		a = bien.nextInt();
		b = bien.nextInt();
		System.out.println(UCLN(a, b));
	}

	public static void bai12() {
		/*
		 * ý tưởng thuật toán:giả sử cấu hình X=(x1,x2...xn)-->nếu X là cấu hình cuối
		 * cùng thì thuật toán kết thúc tìm từ phải sang trái hoán vị có chỉ số j đầu
		 * tiên thỏa mãn x[j]<x[j+1]: vị trí x[j]=1 tìm x[k] nhỏ nhất mà còn lớn hơn
		 * x[j] trong các số bên phải x[j] : x[k]=2 đổi chỗ x[j] và x[k] : 2 9 8 7 6 5 4
		 * 3 1 lật ngược đoạn từ x[j+1] đến x[n]: 2 1 3 4 5 6 7 8 9 VD: 1 9 8 7 6 5 4 3
		 * 2 => 2 1 3 4 5 6 7 8 9
		 */
		Scanner scanner = new java.util.Scanner(System.in);
		int n;
		System.out.println("nhap n: ");
		n = scanner.nextInt();
		int[] x = new int[n + 1];
		for (int i = 1; i <= n; i++)
			x[i] = i;
		while (true) {
			for (int i = 1; i <= n; i++)
				System.out.print(x[i]);
			System.out.println("");
			int j = n - 1, k = n;
			while (x[j] > x[j + 1] && j > 0)
				j--;
			if (j == 0)
				break;
			else {
				while (x[k] < x[j])
					k--;
				int temp = x[j];
				x[j] = x[k];
				x[k] = temp;
				int l = j + 1, r = n;
				while (l < r) {
					int temp1 = x[l];
					x[l] = x[r];
					x[r] = temp1;
					l++;
					r--;
				}

			}
		}

	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//			bai1();
//			bai2();
		// bai3();
		// bai5();
		// bai6();
		// bai7();
		// bai8();
		bai10();
		// bai12();
	}

}
