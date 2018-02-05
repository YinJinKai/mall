package mall.utill;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Tools {

	private static final String F_YMDHMS = "yyyy-MM-dd HH:mm:ss";
	private static final String Time = "yyyyMMddHHmmss";
	public static String dateFormate() {
		DateFormat df = new SimpleDateFormat(F_YMDHMS);// 格式化时间
		Date da = new Date();
		String now = df.format(da);
		return now;

	}
	public static String datecode() {
		DateFormat df = new SimpleDateFormat(Time);
		Date da = new Date();
		String now = df.format(da);
		return now;
	}
}
