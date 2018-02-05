package mall.goods.controller;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import mall.goods.model.ImageModel;
import mall.goods.service.ImageService;

@Controller
@RequestMapping("subImgs")
public class ImageController {
	@Autowired
	private ImageService ImageServiceImpl;
	@RequestMapping(value = "/addimg", method = RequestMethod.POST)
	public void insertImage(ImageModel image,@RequestParam(value = "file", required = false) MultipartFile file,HttpServletResponse response,HttpServletRequest request) {
		 String path = request.getSession().getServletContext().getRealPath("uploadImage");
		 String fileName = UUID.randomUUID()+".jpg";
          File targetFile = new File(path, fileName);
          if (!targetFile.exists()) {
              targetFile.mkdirs();
          }
          try {   
          file.transferTo(targetFile);
          } catch (Exception e) {
              e.printStackTrace();
          }
          String fileUrl=request.getContextPath() + "/uploadImage/" + fileName;
          
          ImageModel dd=new ImageModel();
          dd.setUrl(fileUrl);
          dd.setCode(image.getCode());
          dd.setType(image.getType());
          ImageServiceImpl.insert(dd);
          
          
	}

}
