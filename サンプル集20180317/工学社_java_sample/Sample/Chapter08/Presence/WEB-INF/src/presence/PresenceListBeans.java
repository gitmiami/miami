package presence;

import java.io.Serializable;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class PresenceListBeans implements Serializable {

	DataBaseBeans db = new DataBaseBeans();
	
	private int counter;
	ArrayList nameList;
	ArrayList userIdList;
	ArrayList scheduleIdList;
	ArrayList scheduleList;
	ArrayList presenceList;
	
	public PresenceListBeans() {
		nameList =new ArrayList();
		userIdList =new ArrayList();
		scheduleIdList = new ArrayList();
		scheduleList = new ArrayList();
		presenceList = new ArrayList();
	}

	public void preViewName() {
		try{
			db.connect();
			String sql = "SELECT NAME FROM user";
			ResultSet rs = db.executeQuery(sql);
			while(rs.next()){
				nameList.add(rs.getString("NAME"));
			}
		}catch(Exception e){
		}finally{
			try{
				db.disConnect();
			}catch(Exception e){
			}
		}
	}
	
	public void preViewUserId() {
		try{
			db.connect();
			String sql = "SELECT USERID FROM user";
			ResultSet rs = db.executeQuery(sql);
			while(rs.next()){
				userIdList.add(rs.getString("USERID"));
			}
		}catch(Exception e){
		}finally{
			try{
				db.disConnect();
			}catch(Exception e){
			}
		}
	}
	
	public void preViewSchedule() {
		try{
			db.connect();
			String sql = "SELECT ID,SCHEDULE FROM schedule";
			ResultSet rs = db.executeQuery(sql);
			while(rs.next()){
				scheduleIdList.add(new Integer(rs.getInt("ID")));
				scheduleList.add(rs.getString("SCHEDULE"));
			}
		}catch(Exception e){
		}finally{
			try{
				db.disConnect();
			}catch(Exception e){
			}
		}
	}
	
	public void preViewPresence() {
		try{
			db.connect();
			String sql =
			"SELECT PRE FROM presence " +
			"WHERE ID='"+ getScheduleIdList().get(getCounter()) +"'";
			ResultSet rs = db.executeQuery(sql);
			while(rs.next()){ 
				presenceList.add(rs.getString("PRE"));
			}
		}catch(Exception e){
		}finally{
			try{
				db.disConnect();
			}catch(Exception e){
			}
		}
	}
	
	public int getCounter() {
		return counter;
	}

	public void setCounter(int counter) {
		this.counter = counter;
	}

	public ArrayList getNameList() {
		return nameList;
	}
	
	public void setNameList(ArrayList nameList) {
		this.nameList = nameList;
	}

	public ArrayList getUserIdList() {
		return userIdList;
	}

	public void setUserIdList(ArrayList userIdList) {
		this.userIdList = userIdList;
	}

	public ArrayList getScheduleIdList() {
		return scheduleIdList;
	}
	
	public void setScheduleIdList(ArrayList scheduleIdList) {
		this.scheduleIdList = scheduleIdList;
	}
	
	public ArrayList getScheduleList() {
		return scheduleList;
	}
	
	public void setScheduleList(ArrayList scheduleList) {
		this.scheduleList = scheduleList;
	}
	
	public ArrayList getPresenceList() {
		return presenceList;
	}
	
	public void setPresenceList(ArrayList presenceList) {
		this.presenceList = presenceList;
	}
}