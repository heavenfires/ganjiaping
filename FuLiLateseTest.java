package gjp;

import static org.junit.Assert.*;
import gjp.FuLiLatese.Logarithm;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class FuLiLateseTest {
	FuLiLatese cal;
	@Before
	public void setUp() throws Exception {
		cal=new FuLiLatese();
	}

	@Test
	public final void testBenxihe() {
		double b=3000;
		double l=0.03;
		double n=8;
		double sum1 = (float) (b * Math.pow(1 + l, n));
		double sum2 = b * (1 + l * n);
		Assert.assertEquals(3800.31, sum1, 1.00); 
		Assert.assertEquals(3720.0, sum2, 1.0); 
	}

	@Test
	public final void testBenjin() {
		double l=0.03;
		double n=8;
		double h=20000;
		double b=(float) (h*1/Math.pow(1+l, n));
		Assert.assertEquals(15788.18, b, 1.00);     
	}

	@Test
	public final void testNianshu() {
		double b=10000;
		double l=0.03;
		double h=30000;
		double  n=Logarithm.log(h/b,1+l);;
		Assert.assertEquals(38.0, n, 1.0);    
		}

	@Test
	public final void testLilu() {
		double b=10000;
		double n=8;
		double h=20000;
		double l=Math.pow(h/b, 1.0/n)-1;;
		Assert.assertEquals( 0.091, l, 0.005);  
	}

	@Test
	public final void testNianzongzhi() {
		double b=20000;
		double l=0.03;
		double n=5;
		double h = b * (1 + l) * (Math.pow(1 + l, n) - 1) / l;
		Assert.assertEquals( 109368.2, h, 1.0);
	}

	@Test
	public final void testBenxiHuankuan() {
		double h=100000;
		double l=0.065;
		double n=10;
		l = l / 12;
		n = n * 12;
		double b = h * l * Math.pow(1 + l, n) / (Math.pow(1 + l, n) - 1);
		Assert.assertEquals( 1135.4798, b, 1.0);
	}

}
