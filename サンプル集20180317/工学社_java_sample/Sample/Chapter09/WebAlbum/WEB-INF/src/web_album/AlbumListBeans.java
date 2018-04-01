package web_album;

import java.io.Serializable;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class AlbumListBeans implements Serializable{
	
	ArrayList title;
	ArrayList comment;
	ArrayList imgsrc;
	
	public AlbumListBeans(){
		title = new ArrayList();
		comment = new ArrayList();
		imgsrc = new ArrayList();
	}
	
	public void setAlbumList(){       
		DataBaseBeans db = new DataBaseBeans();
		try{
			db.connect();
			setAlbum(db);
			db.disConnect();    	
		}catch (Exception e){ 
		} 
	}
	
	public void setFocusMemory(String sd){
		DataBaseBeans db = new DataBaseBeans();
		try{
			db.connect();
			setFocus(db,sd);
			db.disConnect();    
		}catch (Exception e){ 
		} 
	}
		
	public void setAlbum(DataBaseBeans db) throws Exception{
		String sql = "select * from photo inner join user on img_id = id and img_passwd = passwd";
		ResultSet rs = db.executeQuery(sql);
      
		while ( rs.next() ){
			title.add((rs.getString("img_title")));
		}
	}
	
	public void setFocus(DataBaseBeans db, String sd) throws Exception{
		AlbumBeans al = new AlbumBeans();
		String sql = "select * from photo where img_title = '"+sd+"'";
		ResultSet rs = db.executeQuery(sql);
		
		while ( rs.next() ){	
			title.add((rs.getString("img_title")));
			comment.add((rs.getString("img_comment")));
			imgsrc.add((rs.getString("img_src")));
		}
	}
	    
	public ArrayList getTitle(){
		return title;
	}
	
	public void setTitle(ArrayList title){
		this.title = title;
	}
	
	public ArrayList getComment(){
		return comment;
	}
	
	public void setComment(ArrayList comment){
		this.comment = comment;
	}
	
	public ArrayList getImgsrc(){
		return imgsrc;
	}

	public void setImgsrc(ArrayList imgsrc){
		this.imgsrc = imgsrc;
	}
}