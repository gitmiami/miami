package db;

import java.io.*;
import java.sql.*;
import java.util.zip.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class db_zip extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		try {
			response.setContentType("application/x-zip-compressed");
			response.setHeader("Content-Disposition","attachment; filename=db.zip");
			OutputStream objOut=response.getOutputStream();
			ZipOutputStream objZos=new ZipOutputStream(objOut);
			Class.forName("org.gjt.mm.mysql.Driver");
			Connection db=DriverManager.getConnection("jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=EUC-JP");
			Statement objSql=db.createStatement();
			DatabaseMetaData objScm=db.getMetaData();
			ResultSet rsTbl=objScm.getTables("jsp","","%",null);
			while(rsTbl.next()){
				ByteArrayOutputStream objByt=new ByteArrayOutputStream();
				OutputStreamWriter out=new OutputStreamWriter(objByt,"EUC-JP");
				String strTbl=rsTbl.getString("TABLE_NAME");
				ResultSet rs=objSql.executeQuery("SELECT * FROM " + strTbl);
				ResultSetMetaData rsScm=rs.getMetaData();
				for(int i=1;i<=rsScm.getColumnCount();i++){
					out.write(rsScm.getColumnName(i));
					if(i!=rsScm.getColumnCount()){out.write("\t");}
				}
				out.write("\r\n");
				while(rs.next()){
					for(int j=1;j<=rsScm.getColumnCount();j++){
						out.write(rs.getString(j));
						if(j!=rsScm.getColumnCount()){out.write("\t");}
					}
					out.write("\r\n");
				}
				out.close();
				ZipEntry objEnt=new ZipEntry(strTbl + ".txt");
				objEnt.setMethod(ZipOutputStream.DEFLATED);
				byte[] bytVal=objByt.toByteArray();
				objZos.putNextEntry(objEnt);
				objZos.write(bytVal,0,bytVal.length);
				objZos.closeEntry();
			}
			db.close();
			objZos.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
