package noticeboard;

import java.io.Serializable;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class NoticeBoardListBeans implements Serializable {
	private ArrayList noticeBoardListData;
	
    public NoticeBoardListBeans() {
		noticeBoardListData = new ArrayList();
    }
 	
	public void setNoticeBoardList() {
		String sql;
		ResultSet rs;
		NoticeBoardInfoBeans nbiNoticeBoardInfo;
		DataBaseBeans db = new DataBaseBeans();
		
		try{
			db.connect();
			sql = "SELECT * FROM NOTICE_BOARD";
			rs = db.executeQuery(sql);
			while (rs.next()) {
				nbiNoticeBoardInfo = new NoticeBoardInfoBeans();
				
				nbiNoticeBoardInfo.setId(rs.getInt("ID"));
				nbiNoticeBoardInfo.setName(rs.getString("NAME"));
  				nbiNoticeBoardInfo.setTitle(rs.getString("TITLE"));
				nbiNoticeBoardInfo.setText(rs.getString("TEXT"));
				nbiNoticeBoardInfo.setNoticeDate(rs.getString("DATE"));
				
				noticeBoardListData.add(nbiNoticeBoardInfo);
			}
		}catch (Exception e){
		}finally{
			try{
				db.disConnect();
			}catch (Exception e){
			}
		}
	}
	
	public void addNoticeBoardInfo(String arg_name,String arg_title,String arg_text) {    		
		DataBaseBeans db = new DataBaseBeans();
		NoticeBoardInfoBeans nbiNoticeBoardInfo = new NoticeBoardInfoBeans();
		
		try {
			db.connect();
			nbiNoticeBoardInfo.setName(arg_name);
			nbiNoticeBoardInfo.setTitle(arg_title);
			nbiNoticeBoardInfo.setText(arg_text);
			nbiNoticeBoardInfo.addNoticeBoardInfo(db);
		}catch (Exception e){
		}finally{
			try{
				db.disConnect();
			}catch (Exception e){
			}
		}
	}
	
	public ArrayList getNoticeboardlistdata() {
		return noticeBoardListData;
	}
	
	public void setNoticeboardlistdata(ArrayList noticeBoardListData) {
		this.noticeBoardListData = noticeBoardListData;
	}
}