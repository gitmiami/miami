package noticeboard;

import java.io.Serializable;
import java.text.DateFormat;
import java.util.Date;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class NoticeBoardInfoBeans implements Serializable {
	
    private int id;
    private String name;
    private String title;
    private String text;
    private String noticeDate;
 	
    public NoticeBoardInfoBeans() {
        name="";
        title="";
        text="";
        noticeDate="";
     }
 	
    public void addNoticeBoardInfo(DataBaseBeans db) throws Exception {   
        String sql;
        Date date = new Date();        
        DateFormat noteDateFormat = DateFormat.getDateTimeInstance();        
        noticeDate = noteDateFormat.format(date);
     
        sql = "INSERT INTO NOTICE_BOARD(NAME, TITLE, TEXT, DATE) " + "VALUES('"+ name + "', '" + title + "', '" + text + "', '" + noticeDate + "')";
        db.executeUpdate(sql);
    }
	
    public int getId() {
        return id;
    }
	
    public void setId(int id) {
        this.id = id;
    }
	
   public String getName() {
        return name;
    }
	
    public void setName(String name) {
        this.name = name;
    }
 	
     public String getTitle() {
        return title;
    }
	
     public void setTitle(String title) {
        this.title = title;
    }
	
    public String getText() {
        return text;
    }
	
    public void setText(String text) {
        this.text = text;
    }
	
    public String getNoticeDate() {
        return noticeDate;
    }
	
    public void setNoticeDate(String noticeDate) {
        this.noticeDate = noticeDate;
    }
}