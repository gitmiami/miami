import beanYama.*;
import java.io.*;
import java.text.*;
import java.util.*;
import com.pdflib.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class pdf_create extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		ServletContext application=getServletConfig().getServletContext();
		pdflib objPdf=new pdflib();
		objPdf.open_file("");
		objPdf.set_info("Author","Yoshihiro Yamada");
		objPdf.set_info("Title","WebWare Submit");
		int intPdi=objPdf.open_pdi(application.getRealPath("/chap4/pdf/sheet.pdf"),"",0);
		int intPag=objPdf.open_pdi_page(intPdi,1,"");
		int intFnt=objPdf.findfont("HeiseiMin-W3","EUC-H",0);
		objPdf.begin_page(objPdf.get_pdi_value("width",intPdi,intPag,0),objPdf.get_pdi_value("height",intPdi,intPag,0));
		objPdf.place_pdi_page(intPag,0,0,1,1);
		objPdf.close_pdi(intPdi);
		objPdf.setfont(intFnt,18);
		objPdf.set_value("leading",31);
		objPdf.set_text_pos(180,609);
		objPdf.show(BeanEncode.strEncode(request.getParameter("usr")));
		objPdf.continue_text(BeanEncode.strEncode(request.getParameter("passwd")));
		objPdf.continue_text(BeanEncode.strEncode(request.getParameter("course")));
		objPdf.continue_text(BeanEncode.strEncode(request.getParameter("address")));
		objPdf.continue_text(BeanEncode.strEncode(request.getParameter("tel")));
		objPdf.continue_text(BeanEncode.strEncode(request.getParameter("fax")));
		objPdf.continue_text(BeanEncode.strEncode(request.getParameter("credit")));
		Calendar objCal=Calendar.getInstance();
		Date objDat=objCal.getTime();
		objPdf.continue_text(new SimpleDateFormat("yyyyÇ¯MM·îddÆü").format(objDat));
		objPdf.end_page();
		objPdf.close();
		byte[] bytBuf=objPdf.get_buffer();
		response.setContentType("application/pdf;charset=EUC-JP");
		response.setHeader("Content-disposition","attachment; filename=out.pdf");
		response.setContentLength(bytBuf.length);
		ServletOutputStream objOut=response.getOutputStream();
		objOut.write(bytBuf);
		objOut.close();
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
