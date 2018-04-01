package struts;

import struts.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.apache.struts.action.*;

public final class UpdateProcess extends Action {
	public ActionForward execute(ActionMapping map, ActionForm fm, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session=request.getSession();
		UpdateForm objFrm=(UpdateForm)fm;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			session.setAttribute("address.data.flag",   "new");
			request.setAttribute("address.data.id",     "");
			request.setAttribute("address.data.nam",    "");
			request.setAttribute("address.data.gender", "");
			request.setAttribute("address.data.birth",  null);
			request.setAttribute("address.data.address","");
			request.setAttribute("address.data.tel",    "");
			request.setAttribute("address.data.email",  "");
			if(objFrm.getId()!=null && !objFrm.getId().equals("")){
				Class.forName(objRB.getString("jdbcDriver"));
				Connection db=DriverManager.getConnection(objRB.getString("conStr"));
				Statement objStt=db.createStatement();
				ResultSet rs=objStt.executeQuery("SELECT * FROM struts_address WHERE id='" + objFrm.getId() + "'");
				if(rs.next()){
					session.setAttribute("address.data.flag",   "update");
					request.setAttribute("address.data.id",     rs.getString("id"));
					request.setAttribute("address.data.nam",    rs.getString("nam"));
					request.setAttribute("address.data.gender", rs.getString("gender"));
					request.setAttribute("address.data.birth",  rs.getDate("birth"));
					request.setAttribute("address.data.address",rs.getString("address"));
					request.setAttribute("address.data.tel",    rs.getString("tel"));
					request.setAttribute("address.data.email",  rs.getString("email"));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map.findForward("right");
	}
}
