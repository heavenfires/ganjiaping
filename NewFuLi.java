 import java.util.*; 
  
  
 public class FuLi { 
  
  
 public static void main(String[] args) { 
  
 float b,l,sum1,sum2,sum; 
 int n; 
  
 Scanner scanner=new Scanner(System.in); 
  
 System.out.println("请输入您的本金: "); 
 b=scanner.nextFloat(); 
  
 System.out.println("请输入您要存储的年数: "); 
 n=scanner.nextInt(); 
  
 System.out.println("请输入年利率: "); 
 l=scanner.nextFloat(); 
  
 sum1=(float) (b*Math.pow(1+l, n)); 
 System.out.println("您的复利本息和为： "+sum1); 
 
 sum2=b*(1+l*n);
 System.out.println("您的单利本息和为： "+sum2);
 
 System.out.println("请输入您的本息和: ");  
 sum=scanner.nextFloat(); 
 
 System.out.println("请输入您要存储的年数: "); 
 n=scanner.nextInt(); 
 
 System.out.println("请输入年利率: "); 
 l=scanner.nextFloat(); 
 
 b=(float)(sum*1/Math.pow(1+l, n));
 System.out.println("您的本金为： "+b); 
  
  
 } 
  
 } 
