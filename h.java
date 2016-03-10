import java.util.Scanner;
import java.util.Stack;


public class NumberConvertor {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
        Scanner scanner = new Scanner (System.in);
        System.out.printf("ÇëÊäÈëÒ»¸ö°¢À­²®Êı×Ö:");
        String number = scanner.next();
        
        String[] chineseNumbers = {"Áã","Ò¼","·¡","Èş","ËÁ","Îé","Â½","Æâ","°Æ","¾Á"};
        String result ="";
        for(int i=0;i<number.length();i++){
        	String subString = number.substring(i,i+1);
        	int digital = Integer.parseInt(subString);
        	result=result+chineseNumbers[digital];
        }
       /* while(number > 0);{
        int digital = number%10;
        result = chineseNumbers[digital]+ result;
        number = number /10;
        } 
       */
        	System.out.print(result);
        }
	}
	

