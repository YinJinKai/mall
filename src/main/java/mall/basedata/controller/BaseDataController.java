package mall.basedata.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import mall.basedata.model.BaseDataModel;
import mall.basedata.service.BaseDataService;
import net.sf.json.JSONArray;

@Controller
@RequestMapping("/basedata")
public class BaseDataController {
	@Autowired
	private BaseDataService BaseDataServiceImpl;

	@RequestMapping("/data")
	public void selectAll(HttpServletResponse response,BaseDataModel data) {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
        BaseDataModel da=new BaseDataModel();
        List<BaseDataModel> arealist = BaseDataServiceImpl.selectAll(da);
        PrintWriter out;
		try {
			out = response.getWriter();
			JSONArray json = JSONArray.fromObject(arealist);
			out.print(json.toString());
			out.flush();
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@RequestMapping("/childdata")
	public void selectchild(HttpServletResponse response,BaseDataModel data) {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		BaseDataModel da=new BaseDataModel();
		da.setParentcode(data.getCode());
		List<BaseDataModel> arealist = BaseDataServiceImpl.selectchild(da);
		 PrintWriter out;
			try {
				out = response.getWriter();
				JSONArray json = JSONArray.fromObject(arealist);
				out.print(json.toString());
                out.flush();
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	  	  
	}

}
