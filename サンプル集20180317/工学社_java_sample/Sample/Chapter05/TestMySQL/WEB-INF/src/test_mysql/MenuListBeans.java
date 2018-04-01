package test_mysql;

import java.io.Serializable;
import java.sql.ResultSet;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class MenuListBeans implements Serializable{
	
	MenuBeans menuList[];
   
	public MenuListBeans(){
   		menuList = new MenuBeans[7];
   	}

   	public void setMenuList(){       
		DataBaseBeans db = new DataBaseBeans();
       
		try{
			db.connect();
            		setMenu(db);
           		db.disConnect();
		}catch (Exception e){ 
		} 
	}
   
	public void updateMenu(String menu, String day){
   		DataBaseBeans db = new DataBaseBeans();
       		MenuBeans mb = new MenuBeans();
       
		try{
			db.connect();
        		mb.setMenu(menu);
        		mb.setDay(day);
        		mb.updateMenu(db);
        		setMenu(db);
        		db.disConnect();
		}catch (Exception e){       
		}
	}

	public void setMenu(DataBaseBeans db) throws Exception{
        	int i = 0;
        	String sql = "select * from menu";
        	ResultSet rs = db.executeQuery(sql);
           
        	while ( rs.next() ){
        		MenuBeans mb = new MenuBeans();
        		mb.setMenu(rs.getString("meal"));
        		mb.setDay(rs.getString("day"));
        		menuList[i] = mb;
        		i++;
		}
   	}
   
	public MenuBeans[] getMenuList(){
		return menuList;
	}

	public void setMenuList(MenuBeans[] menuList){
		this.menuList = menuList;
	}
}
