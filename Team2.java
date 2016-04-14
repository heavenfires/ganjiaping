package gjp;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.DefaultComboBoxModel;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.SwingUtilities;
import javax.swing.UIManager;

import org.dyno.visual.swing.layouts.Constraints;
import org.dyno.visual.swing.layouts.GroupLayout;
import org.dyno.visual.swing.layouts.Leading;

//VS4E -- DO NOT REMOVE THIS LINE!
public class Team2 extends JFrame {

	private static final long serialVersionUID = 1L;
	private JLabel jLabel0;
	private JLabel jLabel1;
	private JLabel jLabel2;
	private JTextField jTextField1;
	private JTextField jTextField2;
	private JTextField jTextField0;
	private JTextField jTextField3;
	private JLabel jLabel3;
	private JLabel jLabel4;
	private JTextField jTextField4;
	private JButton jButton0;
	private JButton jButton1;

	public Team2() {
		initComponents();
	}

	private void initComponents() {
		setLayout(new GroupLayout());
		add(getJLabel0(), new Constraints(new Leading(8, 128, 10, 10), new Leading(25, 10, 10)));
		add(getJLabel1(), new Constraints(new Leading(91, 10, 10), new Leading(55, 12, 12)));
		add(getJLabel2(), new Constraints(new Leading(78, 12, 12), new Leading(85, 12, 12)));
		add(getJTextField1(), new Constraints(new Leading(128, 64, 12, 12), new Leading(55, 18, 12, 12)));
		add(getJTextField2(), new Constraints(new Leading(128, 64, 12, 12), new Leading(85, 18, 12, 12)));
		add(getJTextField0(), new Constraints(new Leading(128, 64, 12, 12), new Leading(25, 18, 12, 12)));
		add(getJTextField3(), new Constraints(new Leading(128, 64, 12, 12), new Leading(113, 18, 12, 12)));
		add(getJLabel3(), new Constraints(new Leading(44, 12, 12), new Leading(113, 12, 12)));
		add(getJLabel4(), new Constraints(new Leading(12, 12, 12), new Leading(141, 12, 12)));
		add(getJLabel9(), new Constraints(new Leading(143, 12, 12), new Leading(182, 12, 12)));
		add(getJLabel10(), new Constraints(new Leading(143, 12, 12), new Leading(228, 12, 12)));
		add(getJLabel8(), new Constraints(new Leading(141, 12, 12), new Leading(134, 12, 12)));
		add(getJLabel7(), new Constraints(new Leading(141, 12, 12), new Leading(89, 12, 12)));
		add(getJLabel6(), new Constraints(new Leading(141, 12, 12), new Leading(44, 12, 12)));
		add(getJTextField4(), new Constraints(new Leading(128, 64, 12, 12), new Leading(139, 18, 12, 12)));
		add(getJComboBox0(), new Constraints(new Leading(255, 115, 10, 10), new Leading(44, 31, 12, 12)));
		add(getJTextField5(), new Constraints(new Leading(62, 245, 10, 10), new Leading(214, 113, 10, 10)));
		add(getJButton1(), new Constraints(new Leading(159, 10, 10), new Leading(174, 12, 12)));
		add(getJButton0(), new Constraints(new Leading(67, 10, 10), new Leading(174, 12, 12)));
		setSize(377, 344);
	}

	private JTextField getJTextField5() {
		if (jTextField5 == null) {
			jTextField5 = new JTextField();
		}
		return jTextField5;
	}

	private JLabel getJLabel6() {
		if(jLabel6==null){
			jLabel6=new JLabel();
			jLabel6.setText(null);
		}
		return jLabel6;
	}

	private JLabel getJLabel7() {
		if(jLabel7==null){
			jLabel7=new JLabel();
			jLabel7.setText(null);
	}
		return jLabel7;
	
	}

	private JLabel getJLabel8() {
		if(jLabel8==null){
			jLabel8=new JLabel();
			jLabel8.setText(null);
	}
		return jLabel8;
	}

	private JLabel getJLabel10() {
		if(jLabel10==null){
			jLabel10=new JLabel();
			jLabel10.setText(null);
	}
		return jLabel10;
	}

	private JLabel getJLabel9() {
		if(jLabel9==null){
			jLabel9=new JLabel();
			jLabel9.setText(null);
	}
		return jLabel9;
	}

	private JButton getJButton1() {
		if (jButton1 == null) {
			jButton1 = new JButton();
			jButton1.setText("清除");
			jButton1.addMouseListener(new MouseAdapter() {
	
				public void mouseClicked(MouseEvent event) {
					jButton1MouseMouseClicked(event);
				}
			});
		}
		return jButton1;
	}

	private JButton getJButton0() {
		if (jButton0 == null) {
			jButton0 = new JButton();
			jButton0.setText("计算");
			jButton0.addMouseListener(new MouseAdapter() {
	
				public void mouseClicked(MouseEvent event) {
					jButton0MouseMouseClicked(event);
				}
			});
		}
		return jButton0;
	}

	private JComboBox getJComboBox0() {
		if (jComboBox0 == null) {
			jComboBox0 = new JComboBox();
			jComboBox0.setModel(new DefaultComboBoxModel(new Object[] { "求本息和(复利)", "求本息和(单利)", "求本金", "求年数", "求年利率", "求年资产总值", "求等额本息还款", "求投资组合", "查看投资记录" }));
			jComboBox0.setDoubleBuffered(false);
			jComboBox0.setBorder(null);
		}
		return jComboBox0;
	}

	private JTextField getJTextField4() {
		if (jTextField4 == null) {
			jTextField4 = new JTextField();
		}
		return jTextField4;
	}

	private JLabel getJLabel4() {
		if (jLabel4 == null) {
			jLabel4 = new JLabel();
			jLabel4.setText("本息和/年资产总值：");
		}
		return jLabel4;
	}

	private JLabel getJLabel3() {
		if (jLabel3 == null) {
			jLabel3 = new JLabel();
			jLabel3.setText("等息还款(月)：");
		}
		return jLabel3;
	}

	private JTextField getJTextField3() {
		if (jTextField3 == null) {
			jTextField3 = new JTextField();
		}
		return jTextField3;
	}

	private JTextField getJTextField0() {
		if (jTextField0 == null) {
			jTextField0 = new JTextField();
		}
		return jTextField0;
	}

	private JTextField getJTextField2() {
		if (jTextField2 == null) {
			jTextField2 = new JTextField();
		}
		return jTextField2;
	}

	private JTextField getJTextField1() {
		if (jTextField1 == null) {
			jTextField1 = new JTextField();
		}
		return jTextField1;
	}

	private JLabel getJLabel2() {
		if (jLabel2 == null) {
			jLabel2 = new JLabel();
			jLabel2.setText("年利率：");
		}
		return jLabel2;
	}

	private JLabel getJLabel1() {
		if (jLabel1 == null) {
			jLabel1 = new JLabel();
			jLabel1.setText("年数：");
		}
		return jLabel1;
	}

	private JLabel getJLabel0() {
		if (jLabel0 == null) {
			jLabel0 = new JLabel();
			jLabel0.setText("本金/贷款/投资金额：");
		}
		return jLabel0;
	}



private static void installLnF(){
	try{
	String lnfClassname = PREFERRED_LOOK_AND_FEEL;
	if(lnfClassname==null)
		lnfClassname = UIManager.getCrossPlatformLookAndFeelClassName();
	UIManager.setLookAndFeel(lnfClassname);
}
	catch(Exception e){
		System.err.println("Cannot install"+PREFERRED_LOOK_AND_FEEL+"on this platform:"+e.getMessage());
	}
		
  }


boolean y=false;
private JComboBox jComboBox0;
private JLabel jLabel6;
private JLabel jLabel7;
private JLabel jLabel8;
private JLabel jLabel9;
private JLabel jLabel10;
private JTextField jTextField5;
private static final String PREFERRED_LOOK_AND_FEEL = "javax.swing.plaf.metal.MetalLookAndFeel";
public static void main(String[] args){
	installLnF();
	SwingUtilities.invokeLater(new Runnable(){
		public void run(){
			Team2 frame=new Team2();
			frame.setDefaultCloseOperation(Team.EXIT_ON_CLOSE);
			frame.setTitle("text1");
			frame.getContentPane().setPreferredSize(frame.getSize());
			frame.pack();
			frame.setLocationRelativeTo(null);
			frame.setVisible(true);
		}
	});
}

public static class Logarithm{
	public static double log(double value,double base){
		return Math.log(value)/Math.log(base);
	}
}

public void jButton0MouseMouseClicked(MouseEvent event) {
		String key1;
		boolean canplay = false;
		String b, c, d;
		double i=0,n=0,p=0,f=0;
		key1 = (String) jComboBox0.getSelectedItem();

if (key1 == "求本息和(复利)") {
			b = String.valueOf(jTextField2.getText());
			c = String.valueOf(jTextField1.getText());
			d = String.valueOf(jTextField0.getText());
			if (b.length() > 0 && c.length() > 0 && d.length() > 0) {
			i = Double.parseDouble(jTextField2.getText());
			n = Double.parseDouble(jTextField1.getText());
			p = Double.parseDouble(jTextField0.getText());
			canplay = deposit1(i, n, p);
			}	
} else if (key1 == "求本息和(单利)") {
	        b = String.valueOf(jTextField2.getText());
			c = String.valueOf(jTextField1.getText());
			d = String.valueOf(jTextField0.getText());
			if (b.length() > 0 && c.length() > 0 && d.length() > 0) {
			i = Double.parseDouble(jTextField2.getText());
			n = Double.parseDouble(jTextField1.getText());
			p = Double.parseDouble(jTextField0.getText());
			canplay = deposit2(i, n, p);
			}	
} else if (key1 == "求本金") {
			b = String.valueOf(jTextField2.getText());
			c = String.valueOf(jTextField1.getText());
			d = String.valueOf(jTextField4.getText());
			if (b.length() > 0 && c.length() > 0 && d.length() > 0) {
			i = Double.parseDouble(jTextField2.getText());
			n = Double.parseDouble(jTextField1.getText());
			f = Double.parseDouble(jTextField4.getText());
			canplay = principal(i,n,f);
			}
} else if (key1 == "求年数") {
			b = String.valueOf(jTextField0.getText());
			c = String.valueOf(jTextField2.getText());
			d = String.valueOf(jTextField4.getText());
			if (b.length() > 0 && c.length() > 0 && d.length() > 0) {
			p = Double.parseDouble(jTextField0.getText());
			i = Double.parseDouble(jTextField2.getText());
			f = Double.parseDouble(jTextField4.getText());
			canplay = year(p, i, f);
			}
} else if (key1 == "求年利率") {
			b = String.valueOf(jTextField0.getText());
			c = String.valueOf(jTextField1.getText());
			d = String.valueOf(jTextField4.getText());
			if (b.length() > 0 && c.length() > 0 && d.length() > 0) {
			p = Double.parseDouble(jTextField0.getText());
			n = Double.parseDouble(jTextField1.getText());
			f = Double.parseDouble(jTextField4.getText());
			canplay = interest(p, n, f);
			}
} else if (key1 == "求年资产总值") {
			b = String.valueOf(jTextField0.getText());
			c = String.valueOf(jTextField1.getText());
			d = String.valueOf(jTextField2.getText());
			if (b.length() > 0 && c.length() > 0 && d.length() > 0) {
			p = Double.parseDouble(jTextField0.getText());
			n = Double.parseDouble(jTextField1.getText());
			i = Double.parseDouble(jTextField2.getText());
			canplay = asset(p, n, i);
			}
} else if (key1 == "求等额本息还款") {
			b = String.valueOf(jTextField0.getText());
			c = String.valueOf(jTextField2.getText());
			d = String.valueOf(jTextField1.getText());
			if (b.length() > 0 && c.length() > 0 && d.length() > 0) {
			p = Double.parseDouble(jTextField0.getText());
			i = Double.parseDouble(jTextField2.getText());
			n = Double.parseDouble(jTextField1.getText());
			canplay = loan(p,i,n);
			}
} else if (key1 == "求投资组合") {
	        b = String.valueOf(jTextField2.getText());
			c = String.valueOf(jTextField1.getText());
			d = String.valueOf(jTextField0.getText());
			if (b.length() > 0 && c.length() > 0 && d.length() > 0) {
			i = Double.parseDouble(jTextField2.getText());
			n = Double.parseDouble(jTextField1.getText());
			p = Double.parseDouble(jTextField0.getText());
			canplay = deposit3(i, n, p);
			}	
if (canplay == false) {
			JOptionPane.showMessageDialog(null, "请输入正确数字！");
		}
	}
}

public void jButton1MouseMouseClicked(MouseEvent event) {
		this.jTextField0.setText(null);
		this.jTextField1.setText(null);
		this.jTextField2.setText(null);
		this.jTextField3.setText(null);
		this.jTextField4.setText(null);
		this.jTextField5.setText(null);
	}
		
public boolean deposit1(double i, double n, double p) {
		double f = 0;
		if(i>0&&n>0&&p>0){
			f = (float) (p * Math.pow(1 + i, n));
this.jTextField4.setText(String.format("%.2f", f));
return true;
		}
else return false;
	}
public boolean deposit2(double i, double n, double p) {
		double f = 0;
		if(i>0&&n>0&&p>0){
			f = p*(1+i*n);
this.jTextField4.setText(String.format("%.2f", f));
return true;
		}
else return false;
	}
public boolean principal(double i, double n, double f) {
		double p = 0;
		if(i>0&&n>0&&f>0){
p = (float) (f * 1 / Math.pow(1 + i, n));
this.jTextField0.setText(String.format("%.2f", p));
return true;
		}
else return false;
	}

public boolean year(double p, double i, double f) {
		double n = 0;
        	if(i>0&&f>0&&p>0){
n = Logarithm.log(f / p, 1 + i);
		n = Math.ceil(n);
this.jTextField1.setText(String.format("%.2f", n));
return true;
		}
else return false;
	}

public boolean interest(double p, double n, double f) {
		double i = 0;
		if(f>0&&n>0&&p>0){
i = Math.pow(f / p, 1.0 / n) - 1;
this.jTextField2.setText(String.format("%.2f",i));
return true;
		}
else return false;
	}

public boolean asset(double p, double i, double n) {
double f = 0;
if(i>0&&n>0&&p>0){
f = p * (1 + i) * (Math.pow(1 + i, n) - 1) / i;
this.jTextField4.setText(String.format("%.2f",f));
return true;
		}
else return false;
	}

public boolean loan(double f, double i, double n) {
		double j = 0;
		if(i>0&&n>0&&f>0){
                i = i / 12;
		n = n * 12;
		j = f * i * Math.pow(1 + i, n) / (Math.pow(1 + i, n) - 1); 
this.jTextField3.setText(String.format("%.2f",j));
return true;
		}
else return false;
	}
public boolean deposit3(double i, double n, double p) {
		double  f = 0;
		if(i>0&&n>0&&p>0){
			f = (float) (p * Math.pow(1 + i, n));
this.jTextField4.setText(String.format("%.2f", f));
this.jTextField5.setText(String.format("%.2f", f));
return true;
		}
else return false;
	}
}
