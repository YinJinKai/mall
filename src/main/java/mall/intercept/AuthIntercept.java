package mall.intercept;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthIntercept extends HandlerInterceptorAdapter{
@Override
public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
		throws Exception {
	// TODO Auto-generated method stub
	  HandlerMethod method = (HandlerMethod) handler;
	  Auth auth=method.getMethod().getAnnotation(Auth.class);
	  System.out.println(auth);//null
	  System.out.println("111111100");
	  if(auth==null||auth.verifyLogin()) {
		  String userid = (String) ((HttpServletRequest) request).getSession().getAttribute("userid");// session范围广,关闭浏览器之前
		  String baseUri = request.getContextPath();
		  if (userid == null || "".equals(userid)) {
			  System.out.println("1111111");
				response.sendRedirect(baseUri+"/login.jsp");
				
	            return false;
	        }
	
	
	
	
	
	
	
	  }
	
	return super.preHandle(request, response, handler);//放行
  }
}

