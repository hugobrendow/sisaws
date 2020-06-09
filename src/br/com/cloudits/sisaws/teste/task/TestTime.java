package br.com.cloudits.sisaws.teste.task;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;

public class TestTime {

	public static void main(String[] args) throws ParseException {
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = df.parse("2018-06-01 17:32:40");
		Date date2 = df.parse("2018-06-01 17:33:40");
				
		Timer timer = new Timer();
		timer.schedule(new MyTimeTask(), date);
		timer.schedule(new MyTimeTask(), date2);
		
	}
}
