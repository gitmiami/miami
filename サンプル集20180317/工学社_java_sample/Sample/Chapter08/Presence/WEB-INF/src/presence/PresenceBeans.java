package presence;

import java.io.Serializable;
import java.sql.ResultSet;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class PresenceBeans implements Serializable {

	DataBaseBeans db = new DataBaseBeans();

	private String userid;
	private int scheduleid;
	private String schedule;
	private String pre;

	public PresenceBeans() {
	}

	public void preSelectView() {
		try{
			db.connect();
			String sql = 
			"SELECT SCHEDULE FROM SCHEDULE " +
			"WHERE ID='"+getScheduleId()+"'";
			ResultSet rs = db.executeQuery(sql);
			rs.next();
			setSchedule(rs.getString("SCHEDULE"));
		}catch(Exception e){
		}finally{
			try{
				db.disConnect();
			}catch(Exception e){
			}
		}
	}

	public void insertSchedule() {
		PresenceListBeans prelist = new PresenceListBeans();
		try{
			db.connect();
			String sql1 = 
			"INSERT INTO schedule(SCHEDULE) " +
			"VALUES('"+getSchedule()+"')";
			db.executeUpdate(sql1);
			String sql2 = 
			"SELECT ID FROM schedule " +
			"WHERE SCHEDULE = '"+getSchedule()+"'";
			ResultSet rs = db.executeQuery(sql2);
			rs.next();
			int scheId = rs.getInt("ID");
			prelist.preViewUserId();
			for(int i=0; i<prelist.getUserIdList().size(); i++){
				String sql3 = 
				"INSERT INTO presence(ID, USERID) " +
				"VALUES('"+scheId+"', '"+prelist.getUserIdList().get(i)+"')";
				db.executeUpdate(sql3);
			}
		}catch(Exception e){
		}finally{
			try{
				db.disConnect();
			}catch (Exception e){
			}
		}
	}

	public void preUpdate() {
		try{
			db.connect();
			String sql = 
			"UPDATE PRESENCE SET PRE ='"+getPre()+"'" +
			"WHERE ID='"+ getScheduleId()+"' AND  USERID = '"+getUserId()+"'";
			db.executeUpdate(sql);
		}catch(Exception e){
		}finally{
			try{
				db.disConnect();
			}catch(Exception e){
			}
		}
	}

	public String getUserId() {
		return userid;
	}
	
	public void setUserId(String userid) {
		this.userid = userid;
	}

	public int getScheduleId() {
		return scheduleid;
	}

	public void setScheduleId(int scheduleid) {
		this.scheduleid = scheduleid;
	}

	public String getSchedule() {
		return schedule;
	}
	
	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}

	public String getPre() {
		return pre;
	}

	public void setPre(String pre) {
		this.pre = pre;
	}
}