package struts;

import struts.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.apache.struts.action.*;

public final class SubmitProcess extends Action {
	public ActionForward execute(ActionMapping map, ActionForm fm, HttpServletRequest request, HttpServletResponse response) {
		String strPrm=null;
		SubmitForm objFrm=(SubmitForm)fm;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			if(objFrm.getFlag()!=null && objFrm.getFlag().equals("new")){
				if(this.isSubmited(objFrm,request)){
					strPrm="error";
				}else{
					PreparedStatement objUpd=db.prepareStatement("INSERT INTO struts_address(nam,gender,birth,address,tel,email) VALUES(?,?,?,?,?,?)");
					objUpd.setString(1,objFrm.getNam());
					objUpd.setString(2,objFrm.getGender());
					objUpd.setString(3,objFrm.getBirth());
					objUpd.setString(4,objFrm.getAddress());
					objUpd.setString(5,objFrm.getTel());
					objUpd.setString(6,objFrm.getEmail());
					objUpd.executeUpdate();
					strPrm="right";
				}
			}else{
				if(objFrm.getSbm()!=null){
					PreparedStatement objUpd=db.prepareStatement("UPDATE struts_address SET gender=?,birth=?,address=?,tel=?,email=? WHERE id=?");
					objUpd.setString(1,objFrm.getGender());
					objUpd.setString(2,objFrm.getBirth());
					objUpd.setString(3,objFrm.getAddress());
					objUpd.setString(4,objFrm.getTel());
					objUpd.setString(5,objFrm.getEmail());
					objUpd.setString(6,objFrm.getId());
					objUpd.executeUpdate();
					strPrm="right";
				}else{
					PreparedStatement objDel=db.prepareStatement("DELETE FROM struts_address WHERE id=?");
					objDel.setString(1,objFrm.getId());
					objDel.executeUpdate();
					strPrm="right";
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map.findForward(strPrm);
	}
	private boolean isSubmited(ActionForm fm, HttpServletRequest request){
		boolean flag=false;
		HttpSession session=request.getSession();
		SubmitForm objFrm=(SubmitForm)fm;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objStt=db.createStatement();
			ResultSet rs=objStt.executeQuery("SELECT id FROM struts_address WHERE nam='" + objFrm.getNam() + "'");
			if(rs.next()){
				session.setAttribute("address.data.uperr",  "true");
				request.setAttribute("address.data.id",     objFrm.getId());
				request.setAttribute("address.data.nam",    objFrm.getNam());
				request.setAttribute("address.data.gender", objFrm.getGender());
				request.setAttribute("address.data.birth",  objFrm.getBirth());
				request.setAttribute("address.data.address",objFrm.getAddress());
				request.setAttribute("address.data.tel",    objFrm.getTel());
				request.setAttribute("address.data.email",  objFrm.getEmail());
				flag=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
}
