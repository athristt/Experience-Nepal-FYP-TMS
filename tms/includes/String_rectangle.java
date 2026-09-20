import java.applet.*;
import java.awt.*;
public class String_Rectangle extends Applet
{
    //Initialize the applet
    public void init()
    {
	setBackground(Color.white);
    }
    //Function to draw rectangle and string
    public void paint(Graphics g)
    {
	g.setColor(Color.black);
 
	int wid = 300;
	int len = 250;
	
	g.drawRect(100,175,wid,len);
 
	//Create a font and draw string
	Font myFont = new Font("TimesRoman",Font.BOLD,15);
	g.setFont(myFont);
	g.setColor(Color.green);
	String s = "Hello World";
	g.drawString(s,150,250);
    }
}