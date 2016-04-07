package gjp;
import java.util.*;

public class FuLiTeam {
	public static double b, l, n, h;
	public static int s=0;
    
       static double B[]  = new double[10];
       static double L[]  = new double[10];
       static double N[]  = new double[10];
       static double H[]  = new double[10];

	// 计算本息和
	public static void Benxihe() {
		double sum1, sum2;
		Scanner scanner = new Scanner(System.in);
		System.out.println("请输入本金: ");
		b = scanner.nextDouble();
		System.out.println("请输入年利率: ");
		l = scanner.nextDouble();
		System.out.println("请输入年数: ");
		n = scanner.nextInt();
		sum1 = (float) (b * Math.pow(1 + l, n));
		sum2 = b * (1 + l * n);
		System.out.println("复利的本息和为： "
				+ (double) (Math.round(sum1 * 100) / 100.0));
		System.out.println("单利的本息和为： "
				+ (double) (Math.round(sum2 * 100) / 100.0));
	}

	// 计算本金
	public static void Benjin() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("请输入年利率: ");
		l = scanner.nextDouble();
		System.out.println("请输入年数: ");
		n = scanner.nextInt();
		System.out.println("请输入本息和: ");
		h = scanner.nextDouble();
		b = (float) (h * 1 / Math.pow(1 + l, n));
		System.out.println("本金为： " + (double) (Math.round(b * 100) / 100.0));
	}

	// 计算年数
	public static class Logarithm {
		public static double log(double value, double base) {
			return Math.log(value) / Math.log(base);
		}
	}

	public static void Nianshu() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("请输入本金: ");
		b = scanner.nextDouble();
		System.out.println("请输入年利率: ");
		l = scanner.nextDouble();
		System.out.println("请输入本息和: ");
		h = scanner.nextDouble();
		n = Logarithm.log(h / b, 1 + l);
		n = Math.ceil(n);
		System.out.println("需要存的年数为: " + Math.ceil(n));
	}

	// 计算年利率
	public static void Lilu() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("请输入本金: ");
		b = scanner.nextDouble();
		System.out.println("请输入年数: ");
		n = scanner.nextInt();
		System.out.println("请输入本息和: ");
		h = scanner.nextDouble();
		l = Math.pow(h / b, 1.0 / n) - 1;
		System.out
				.println("年报酬率为： " + (double) (Math.round(l * 1000) / 1000.0));
	}

	// 计算本利之和连同年金投资后的总资产值
	public static void Nianzongzhi() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("请输入每年定投资金: ");
		b = scanner.nextDouble();
		System.out.println("请输入年利率: ");
		l = scanner.nextDouble();
		System.out.println("请输入年数: ");
		n = scanner.nextInt();
		h = b * (1 + l) * (Math.pow(1 + l, n) - 1) / l;
		System.out.println("年资产总值为：" + (double) (Math.round(h * 100) / 100.0));
	}

	// 计算每月等额本息还款
	public static void BenxiHuankuan() {
		double h, l, b;
		int n;
		Scanner scanner = new Scanner(System.in);
		System.out.println("请输入贷款金额: ");
		h = scanner.nextDouble();
		System.out.println("请输入年利率: ");
		l = scanner.nextDouble();
		System.out.println("请输入贷款年数: ");
		n = scanner.nextInt();
		l = l / 12;
		n = n * 12;
		b = h * l * Math.pow(1 + l, n) / (Math.pow(1 + l, n) - 1);
		System.out.println("每月等额本息还款为："
				+ (double) (Math.round(b * 10000) / 10000.0));
	}
	
	private static void TouZi() {
        boolean flag;
        int number;
          Scanner scanner=new Scanner(System.in);
          System.out.println("请输入投资本金: ");
          b=scanner.nextDouble();
          System.out.println("请输入投资年利率: ");
          l=scanner.nextDouble();
          System.out.println("请输入投资年数: ");
          n = scanner.nextInt();
        for (int t = 1; t <= n; t++) {
            h = (float) (b * Math.pow(1 + l, n));

            System.out.println("第" + t + "年\t  " + (double)(Math.round(h*100)/100.0) + "");
        }
        B[s]=b;
        L[s]=l;
        N[s]=n;
        H[s]=h;
        
        System.out.println("查看之前记录(输入1为查看): ");
        number = scanner.nextInt();
        if(number==1){
            System.out.print("\t"+"投资本金"+"\t"+"投资年利率"+"\t"+"投资年数"+"\t"+"资产现值"+"\n");
            for(int b=0;b<=s;b++)
            {
                System.out.print(b+1+"\t"+B[b]+"\t"+L[b]+"\t"+N[b]+"\t"+H[b]+"\n");

            }
                
        }
        else{
            System.out.print("谢谢");
            
        }    
    }
     

	public static void main(String[] args) {
		int choice;
		while (true) {
			System.out.println("\t\t|------------------|");
			System.out.println("\t\t|  1.求本息和                               |");
			System.out.println("\t\t|  2.求本金                                   |");
			System.out.println("\t\t|  3.求年数                                   |");
			System.out.println("\t\t|  4.求年利率                               |");
			System.out.println("\t\t|  5.求年资产总值                       |");
			System.out.println("\t\t|  6.求等额本息还款                   |");
			System.out.println("\t\t|  7.投资组合                                 |");
			System.out.println("\t\t|  8.退出                                       |");
			System.out.println("\t\t|------------------|");
			Scanner scanner = new Scanner(System.in);
			System.out.println("请输入你的选择(1~8):  ");
			choice = scanner.nextInt();
			switch (choice) {
			case 1:
				Benxihe();
				break;
			case 2:
				Benjin();
				break;
			case 3:
				Nianshu();
				break;
			case 4:
				Lilu();
				break;
			case 5:
				Nianzongzhi();
				break;
			case 6:
				BenxiHuankuan();
				break;
			case 7:
				TouZi();
				s++;           
			    break;
			case 8:
				System.out.println("欢迎再次使用!");
				System.exit(0);
				break;
			default: {
				System.out.println("出错了!");
				break;
			}
			}
		}
	}
}