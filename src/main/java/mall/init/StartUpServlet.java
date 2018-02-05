package mall.init;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Properties;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mall.utill.Constant;

/**
 * Servlet implementation class StartUpServlet
 */
public class StartUpServlet extends HttpServlet {
	@Override
	public void init() throws ServletException {
		String propName = "prop";
		ResourceBundle pr = ResourceBundle.getBundle(propName);
		Properties pp = new Properties();
		Enumeration<String> pe = pr.getKeys();
		while (pe.hasMoreElements()) {
			String o = pe.nextElement();
			pp.put(o, pr.getObject(o));
		}
		Constant.SELLER_Y=Integer.parseInt(pp.getProperty("SELLER_Y"));
		Constant.SELLER_N=Integer.parseInt(pp.getProperty("SELLER_N"));
		Constant.ADMIN_Y=Integer.parseInt(pp.getProperty("ADMIN_Y"));
		Constant.ADMIN_N=Integer.parseInt(pp.getProperty("ADMIN_N"));
		Constant.DELETE_Y=Integer.parseInt(pp.getProperty("DELETE_Y"));
		Constant.DELETE_N=Integer.parseInt(pp.getProperty("DELETE_N"));
		Constant.EFFECT_Y=Integer.parseInt(pp.getProperty("EFFECT_Y"));
		Constant.EFFECT_N=Integer.parseInt(pp.getProperty("EFFECT_N"));
	}
}