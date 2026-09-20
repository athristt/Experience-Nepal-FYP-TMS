import java.awt.*;  
import javax.swing.*;  
import java.awt.event.*;  
public class CharacterCount extends JFrame implements ActionListener{  
    JLabel lb1,lb2;  
    JTextArea ta;  
     
    CharCount(){  
        super("Char Word Count Tool - JTP");  
        lb2=new Jlabel("Enter text:");  
        ta=new JTextArea();  
        ta.setBounds(50,50,100,30);  
        lb1=new JLabel("Character count: ");  
        lb1.setBounds(150,50,100,30);  
       
        add(lb1);add(lb2);
        setSize(400,400);  
        setLayout(null);//using no layout manager  
        setVisible(true);  
        setDefaultCloseOperation(EXIT_ON_CLOSE);  
    }  
    public void actionPerformed(ActionEvent e){  
        
        String text=ta.getText();  
        lb1.setText("Character count: "+text.length());  
         
        }
    }  
public static void main(String[] args) {  
    new CharCount();  
}}  