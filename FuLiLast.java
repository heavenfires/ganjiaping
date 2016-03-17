import java.util.*;

public class FuLiLast{
     public static double b,l,n,h;
     
   //计算本息和
     public static void Benxihe(){
          double sum1,sum2;
           Scanner scanner=new Scanner(System.in);
           System.out.println("请输入本金: ");
           b=scanner.nextDouble();
           System.out.println("请输入年利率: ");
           l=scanner.nextDouble();
           System.out.println("请输入年数: ");
           n=scanner.nextInt();
           sum1=(float) (b*Math.pow(1+l, n));
           sum2=b*(1+l*n);
           System.out.println("复利的本息和为： "+(double)(Math.round(sum1*100)/100.0));
           System.out.println("单利的本息和为： "+(double)(Math.round(sum2*100)/100.0));
     }
     
     //计算本金
    public static void Benjin(){
         Scanner scanner=new Scanner(System.in);
         System.out.println("请输入年利率: ");
          l=scanner.nextDouble();
          System.out.println("请输入年数: ");
          n=scanner.nextInt();
          System.out.println("请输入本息和: ");
          h=scanner.nextDouble();
          b=(float) (h*1/Math.pow(1+l, n));
          System.out.println("本金为： "+(double)(Math.round(b*100)/100.0));
    }
    
  //计算年数
    public static class Logarithm {
    	 public static double log(double value, double base){
 			return Math.log(value)/Math.log(base);		 
 		 }
    }

    public static void Nianshu(){
          Scanner scanner=new Scanner(System.in);
          System.out.println("请输入本金: ");
          b=scanner.nextDouble();
          System.out.println("请输入年利率: ");
          l=scanner.nextDouble();
          System.out.println("请输入本息和: ");
          h=scanner.nextDouble();
          n=Logarithm.log(h/b,1+l);
          n=Math.ceil(n);
          System.out.println("需要存的年数为: "+Math.ceil(n));     
    }
    
    //计算年利率
    public static void Lilu(){
         Scanner scanner=new Scanner(System.in);
          System.out.println("请输入本金: ");
          b=scanner.nextDouble();
          System.out.println("请输入年数: ");
          n=scanner.nextInt();
          System.out.println("请输入本息和: ");
          h=scanner.nextDouble();
          l=Math.pow(h/b, 1.0/n)-1;
          System.out.println("年报酬率为： "+(double)(Math.round(l*1000)/1000.0));
    }
    
    //计算本利之和连同年金投资后的总资产值
    public static void Nianzongzhi(){
         int k=1;
         h=0;
         Scanner scanner=new Scanner(System.in);
          System.out.println("请输入本金: ");
          b=scanner.nextDouble();
          System.out.println("请输入年利率: ");
          l=scanner.nextDouble();
          System.out.println("请输入年数: ");
          n=scanner.nextInt();
          while(k<=n){
              b=b+h;
              h=b*(1+l);
              k++;
          }
         System.out.println("年资产总值为："+(int)h);
    }
    
     public static void main(String[] args) {
         int choice;
         while(true){
         System.out.println("\t\t|------------------|");
         System.out.println("\t\t|  1.求本息和                               |");
         System.out.println("\t\t|  2.求本金                                   |");
         System.out.println("\t\t|  3.求年数                                   |");
        System.out.println("\t\t|  4.求年利率                               |");
        System.out.println("\t\t|  5.求年资产总值                       |");
         System.out.println("\t\t|  6.退出                                       |");
         System.out.println("\t\t|------------------|");
         Scanner scanner=new Scanner(System.in);
         System.out.println("请输入你的选择(1~6):  ");
         choice=scanner.nextInt();
         switch(choice){
         case 1:
             Benjin();
             break;
         case 2:
             Benxihe();
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
             System.exit(0);
             break;
             default:
             {
                 System.out.println("出错了!");
                 break;
             }
         }
             }        
         }
     }