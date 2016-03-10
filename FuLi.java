
import java.util.*;


public class FuLi {


	public static void main(String[] args) {
		
		float b,l,sum;
		int n;
		
		Scanner scanner=new Scanner(System.in);
		
		System.out.println("请输入您的本金: ");
		b=scanner.nextFloat();
		
		System.out.println("请输入您要存储的年数: ");
		n=scanner.nextInt();
		
		System.out.println("请输入年利率: ");
		l=scanner.nextFloat();
		
		sum=(float) (b*Math.pow(1+l, n));
		System.out.println("您的本利和为： "+sum);
		

	}

}
