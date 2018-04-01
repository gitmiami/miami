package bbs;

import beanYama.*;
import bbs.*;
import java.io.*;
import java.sql.*;
import java.text.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class bbs_index extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		bbs_bean objBbs=new bbs_bean();
		try {
			response.setContentType("text/html;charset=Shift_JIS");
			PrintWriter out=response.getWriter();
			out.println("<html><head><title>Q&A掲示板</title></head><body>");
			out.println("<h1>");
			out.println("<img src='/advanced/chap2/bbs/bbs.gif' width='30' height='30' />");
			out.println("Q&A掲示板");
			out.println("<img src='/advanced/chap2/bbs/bbs.gif' width='30' height='30' />");
			out.println("</h1><table border='0'>");
			out.println("<tr><td bgcolor='#ccFFDD'>");
			out.println("<form method='POST' action='/advanced/chap2/bbs/srch.jsp'>");
			out.println("<span style='font-weight:bold;'>記事検索：</span>");
			out.println("<input type='text' name='keywd' size='20' />");
			out.println("<input type='submit' value='検索' />");
			out.println("</form><div align='right'>");
			out.println("［<a href='/advanced/chap2/bbs/admin.jsp'>管理者ページへ</a>］</div>");
			out.println("</td></tr></table><hr />");
			out.println("<table width='95%' cellspacing='10'>");
			int cnt=0,tmpCnt=0,pag=0,tmpPage=0;
			String strTrd;
			if(request.getAttribute("cnt")==null){
				cnt=0;
				pag=1;
			}else{
				cnt   =Integer.parseInt(request.getParameter("cnt"));
				pag   =Integer.parseInt(request.getParameter("page"));
			}
			tmpCnt=cnt-5;
			ResultSet rs=objBbs.getRootThread(cnt);
			while(rs.next()){
				out.println("<tr><td bgcolor='#F5FFFF'>");
				if(rs.getString("title").equals("削除済み")){
					out.print(rs.getString("id") + "：");
					out.print("<span style='color:#FF99AA'>削除済み</span>　");
					out.print("(" + EncodeUtil.formatDate("yyyy年MM月dd日",rs.getDate("sdat")) + EncodeUtil.formatDate(" HH時mm分ss秒",rs.getTime("sdat")) + ")　");
				}else{
					out.print(rs.getString("id"));
					out.print("：<a href='/advanced/chap2/bbs/disp.jsp?id=");
					out.print(rs.getString("id") + "'>");
					out.print(EncodeUtil.htmlEncode(rs.getString("title")));
					out.print("</a>　" + EncodeUtil.htmlEncode(rs.getString("nam")));
					out.print("(" + EncodeUtil.formatDate("yyyy年MM月dd日",rs.getDate("sdat")) + EncodeUtil.formatDate(" HH時mm分ss秒",rs.getTime("sdat")) + ")　");
				}
				out.println("</td></tr>");
				ResultSet rsChd=objBbs.getChildThread(rs.getInt("id"));
				if(rsChd!=null){out.println(this.disp(rsChd,objBbs));}
				cnt++;
			}
			out.println("</table>");
			out.println("<br />");
			out.println("<div align='center'>");
			if(pag>1){
				tmpPage=pag-1;
				out.print("<a href='/advanced/servlet/bbs.bbs_index?cnt=");
				out.print(tmpCnt + "&page=" + tmpPage + "'>");
				out.print("<img src='/advanced/chap2/bbs/prev.gif' alt='前ページへ' ");
				out.print("border='0' /></a>　");
			}
			out.print("　<a href='/advanced/chap2/bbs/new.jsp'><img src='/advanced/chap2/bbs/note.gif' width='20' height='20' alt='新規作成' border='0' /></a>　");
			if(cnt%5==0 && cnt!=tmpCnt+5){
				tmpPage=pag+1;
				out.print("　<a href='/advanced/servlet/bbs.bbs_index?cnt=");
				out.print(cnt + "&page=" + tmpPage + "'>");
				out.print("<img src='/advanced/chap2/bbs/next.gif' alt='次ページへ' ");
				out.print("border='0' /></a>");
			}
			out.println("</div>");
			out.println("</body></html>");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
	private String disp(ResultSet rss, bbs.bbs_bean objBbsRef)
		throws SQLException {
		StringBuffer strTmp=new StringBuffer();
		while(rss.next()){
			strTmp.append("<tr><td bgcolor='#FFF7F7'>");
			strTmp.append("<div style='text-indent:");
			strTmp.append((rss.getInt("level")*10) + "px'>");
			if(rss.getString("title").equals("削除済み")){
				strTmp.append(rss.getString("id") + "：<span style='color:#FF99AA'>");
				strTmp.append("削除済み</span>　");
				strTmp.append("(" + EncodeUtil.formatDate("yyyy年MM月dd日",rss.getDate("sdat")) + EncodeUtil.formatDate(" HH時mm分ss秒",rss.getTime("sdat")) + ")　");
			}else{
				strTmp.append(rss.getString("id") + "：<a href='/advanced/chap2/bbs/disp.jsp?id=");
				strTmp.append(rss.getString("id") + "'>");
				strTmp.append(EncodeUtil.htmlEncode(rss.getString("title")) + "</a>　");
				strTmp.append(EncodeUtil.htmlEncode(rss.getString("nam")));
				strTmp.append("(" + EncodeUtil.formatDate("yyyy年MM月dd日",rss.getDate("sdat")) + EncodeUtil.formatDate(" HH時mm分ss秒",rss.getTime("sdat")) + ")　");
			}
			strTmp.append("</div></td></tr>");
			ResultSet rsGChd=objBbsRef.getChildThread(rss.getInt("id"));
			if(rsGChd!=null){strTmp.append(this.disp(rsGChd,objBbsRef));}
		}
		return strTmp.toString();
	}
}
