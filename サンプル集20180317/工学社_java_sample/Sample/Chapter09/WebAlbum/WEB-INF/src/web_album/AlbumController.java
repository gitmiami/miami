package web_album;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class AlbumController extends HttpServlet{
	
	public void doPost (HttpServletRequest request,HttpServletResponse response) 
		throws ServletException, IOException{
		
		request.setCharacterEncoding("Shift_JIS");
		DataBaseBeans db = new DataBaseBeans();
		AlbumBeans al = new AlbumBeans();
		HttpSession session = request.getSession(false);
		al.setSid((String)session.getAttribute("s_id"));
		al.setSpass((String)session.getAttribute("s_passwd"));
		al.setAlflag(request.getParameter("param"));
		
		if(al.getAlflag().equals("focus")){
			al.setSphoto(request.getParameter("selected"));
			AlbumListBeans alb = new AlbumListBeans();
			alb.getTitle().clear();
			alb.setFocusMemory(al.getSphoto());
			request.setAttribute("album",al);
			request.setAttribute("fm",alb);
			getServletConfig().getServletContext().getRequestDispatcher("/FocusMemory.jsp").forward(request,response);
		}
		
		try{	
			db.connect();
	
			if(al.getAlflag().equals("title")){		
				String b_title = request.getParameter("sd_title");
				String al_title = request.getParameter("altered_title");	
				al.setSQL("update photo set img_title='" +al_title+ "' where img_title='" +b_title+ "'");

			}else if(al.getAlflag().equals("comment")){	
				String b_comment = request.getParameter("sd_comment");
				String al_comment = request.getParameter("altered_comment");	
				al.setSQL("update photo set img_comment='" +al_comment+ "' where img_comment='" +b_comment+ "'");

			}else if(al.getAlflag().equals("forget")){	
				String d_memory = request.getParameter("d_src");	
				File d_file = new File(al.getDIR(),d_memory);	
				d_file.delete();	
				al.setSQL("delete from photo where img_src ='"+d_memory+"' and img_id ='"+al.getSid()+"' and "+
	               	"img_passwd='"+al.getSpass()+"'");
			}
				
			db.executeUpdate(al.getSQL());	
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