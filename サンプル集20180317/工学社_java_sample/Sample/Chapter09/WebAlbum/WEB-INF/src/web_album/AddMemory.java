package web_album;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class AddMemory extends HttpServlet{
	
	public void doPost (HttpServletRequest request,HttpServletResponse response) 
		throws ServletException, IOException{
		
		request.setCharacterEncoding("Shift_JIS");
		DataBaseBeans db = new DataBaseBeans();
		AlbumBeans al = new AlbumBeans();
		HttpSession session = request.getSession(false);
		al.setSid((String)session.getAttribute("s_id"));
		al.setSpass((String)session.getAttribute("s_passwd"));
		
		try{
			db.connect();
			al.setUpflag(false);
			DiskFileUpload up = new DiskFileUpload();
			up.setSizeMax(-1);
			up.setHeaderEncoding("Shift_JIS");
			up.setSizeThreshold(1024);
			up.setRepositoryPath("C:/temp");
			List list = up.parseRequest(request);

			for( Iterator iter = list.iterator(); iter.hasNext(); ){
				FileItem item = (FileItem)iter.next();

				if( !item.isFormField() ){
					String f_name = item.getName();
					String p_name = f_name.substring(f_name.lastIndexOf(File.separator)+1);
					String upload = al.getDIR()+"/"+p_name;
					item.write(new File(upload));
					al.setFname(p_name);
						
				}else if( al.getUpflag()==false ){	
					al.setUpflag(true);
					al.setPtitle(item.getString());
						
				}else if( al.getUpflag()==true ){	
					al.setPcomment(item.getString());
				}
			}
			
			String sql = "insert into photo (img_src,img_id,img_passwd,img_title,img_comment)"+
                	" values ('"+al.getFname()+"','"+al.getSid()+"','"+al.getSpass()+"','"+al.getPtitle()+"','"+al.getPcomment()+"')";
			db.executeUpdate(sql);
			AlbumListBeans alb = new AlbumListBeans();	
			alb.setAlbumList();	
			session.setAttribute("alist",alb);	
			getServletConfig().getServletContext().getRequestDispatcher("/Album.jsp").forward(request,response);		
		}catch(Exception e){
		}finally{
			try{
  	     			db.disConnect();		 
  			}catch(Exception e){
  			}
		}
	}
}