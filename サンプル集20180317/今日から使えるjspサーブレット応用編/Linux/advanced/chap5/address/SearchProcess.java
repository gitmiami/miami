package struts;

import struts.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.apache.struts.action.*;

public final class SearchProcess extends Action {
	public ActionForward execute(ActionMapping map, ActionForm fm, HttpServletRequest request, HttpServletResponse response) {
		StringBuffer objSql=new StringBuffer();
		boolean flag=false;
		SearchForm objFrm=(SearchForm)fm;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objStt=db.createStatement();
			objSql.append("SELECT * FROM struts_address");
			if(objFrm.getNam()!=null && !objFrm.getNam().equals("")){
				objSql.append(" WHERE");
				objSql.append(" nam='" + objFrm.getNam() + "'");
				flag=true;
			}
			if(objFrm.getGender()!=null && !objFrm.getGender().equals("")){
				if(flag){objSql.append(" AND");}else{objSql.append(" WHERE");}
				objSql.append(" gender='" + objFrm.getGender() + "'");
				flag=true;
			}
			if(objFrm.getPrefecture()!=null && !objFrm.getPrefecture().equals("")){
				if(flag){objSql.append(" AND");}else{objSql.append(" WHERE");}
				objSql.append(" address LIKE '" + objFrm.getPrefecture() + "%'");
				flag=true;
			}
			ResultSet rs=objStt.executeQuery(objSql.toString());
			ArrayList objAry=new ArrayList();
			while(rs.next()){
				AddressData objDat=new AddressData();
				objDat.setId(rs.getString("id"));
				objDat.setNam(rs.getString("nam"));
				objDat.setGender(rs.getString("gender"));
				objDat.setBirth(rs.getDate("birth"));
				objDat.setAddress(rs.getString("address"));
				objDat.setTel(rs.getString("tel"));
				objDat.setEmail(rs.getString("email"));
				objAry.add(objDat);
			}
			request.setAttribute("address.data",objAry);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map.findForward("right");
	}
}
