import java.io.*;
import java.util.*;
import java.text.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class srv_logRec extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		try{
			ServletContext application=getServletConfig().getServletContext();
			StringBuffer objBuf=new StringBuffer();
			Calendar objCal=Calendar.getInstance();
			Date objDat=objCal.getTime();
			SimpleDateFormat objFmt=new SimpleDateFormat("yyyyMMdd");
			String strNam="data/log/" + objFmt.format(objDat).toString() + ".log";
			FileWriter objFle=new FileWriter(application.getRealPath(strNam),true);
			BufferedWriter objWrt=new BufferedWriter(objFle,10);
			SimpleDateFormat objFmt2=new SimpleDateFormat("HH:mm:ss");
			objBuf.append(objFmt2.format(objDat).toString()); objBuf.append("\t");
			objBuf.append(request.getServletPath());          objBuf.append("\t");
			objBuf.append(request.getHeader("referer"));      objBuf.append("\t");
			objBuf.append(request.getLocale());               objBuf.append("\t");
			objBuf.append(request.getHeader("user-agent"));   objBuf.append("\t");
			objWrt.write(objBuf.toString());
			objWrt.newLine();
			objWrt.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}