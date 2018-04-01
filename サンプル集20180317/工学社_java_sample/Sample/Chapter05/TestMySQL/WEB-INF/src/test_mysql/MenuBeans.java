package test_mysql;

import java.io.Serializable;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class MenuBeans implements Serializable{
	
	private String menu;
	private String day;

	public MenuBeans(){
	}
	
	public void updateMenu(DataBaseBeans db) throws Exception{   
        	String sql = "update menu set meal = '" + menu + "' where day = '" + day + "'";
        	db.executeUpdate(sql);
	}
    
	public String getMenu(){
		return menu;
	}
	
	public void setMenu(String menu){
		this.menu = menu;
	}
	
	public String getDay(){
		return day;
	}
	
	public void setDay(String day){
		this.day = day;
	}
}