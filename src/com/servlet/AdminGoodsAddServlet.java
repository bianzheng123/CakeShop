package com.servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.model.Goods;
import com.service.GoodsService;

/**
 * Servlet implementation class AdminGoodsAddServlet
 */
@WebServlet("/admin/goods_add")
public class AdminGoodsAddServlet extends HttpServlet {
	private GoodsService gService = new GoodsService();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		try {
			List<FileItem> list = upload.parseRequest(request);//获取上传的各个二进制文件
			Goods g = new Goods();
			for(FileItem item:list) {
				if(item.isFormField()) {//如果item是字符串输入
					switch (item.getFieldName()) {
						case "name": 
							g.setName(item.getString("utf-8"));
							break;
						case "price":
							g.setPrice(Float.parseFloat(item.getString("utf-8")));
							break;
						case "intro":
							g.setIntro(item.getString("utf-8"));
							break;
						case "stock":
							g.setStock(Integer.parseInt(item.getString("utf-8")));
							break;
						case "typeid":
							g.setTypeid(Integer.parseInt(item.getString("utf-8")));
							break;
					}
				}else {
					if(item.getInputStream().available() <= 0)continue;//如果输入的内容为空，就跳过
					String fileName = item.getName();
					fileName = fileName.substring(fileName.lastIndexOf("."));//获取文件格式
					fileName = "/" + new Date().getTime() + fileName;
					String path = this.getServletContext().getRealPath("/picture") + fileName;
					System.out.println(path);
					//表示出完整的路径，以时间作为文件名，防止文件名重复
					InputStream in = item.getInputStream();
					FileOutputStream out = new FileOutputStream(path);
					byte[] buffer = new byte[1024];
					int len = 0;
					while((len=in.read(buffer)) > 0) {
						out.write(buffer);
					}
					in.close();
					out.close();
					item.delete();//删除临时文件
					
					switch (item.getFieldName()) {
					case "cover":
						g.setCover("/picture" + fileName);
						break;
					case "image1": 
						g.setImage1("/picture" + fileName);
						break;
					case "image2": 
						g.setImage2("/picture" + fileName);
						break;
					}
				}
			}
			gService.insert(g);
			request.getRequestDispatcher("/admin/goods_list").forward(request, response);
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
