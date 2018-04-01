import java.io.*;
import java.util.*;
import java.awt.*;
import java.awt.image.*;
import com.sun.image.codec.jpeg.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class srv_graph extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		ServletContext application=getServletConfig().getServletContext();
		int intSum=0;
		int intCnt=0;
		int[][] aryColor={{255,0,0},{255,140,0},{0,255,0},{255,255,0},{0,0,255}};
		double[] dblDat=new double[5];
		String[] strDat=new String[5];
		BufferedImage objImg=new BufferedImage(300,300,BufferedImage.TYPE_INT_RGB);
		Graphics objGrh=objImg.getGraphics();
		objGrh.setColor(new Color(255,255,255));
		objGrh.fillRect(0,0,300,300);
		FileReader objFR=new FileReader(application.getRealPath(request.getParameter("dat")));
		BufferedReader objBR=new BufferedReader(objFR);
		while(objBR.ready()){
			String strTmp=objBR.readLine();
			StringTokenizer objTkn=new StringTokenizer(strTmp,"\t");
			strDat[intCnt]=objTkn.nextToken();
			dblDat[intCnt]=Double.parseDouble(objTkn.nextToken());
			intSum+=dblDat[intCnt];
			intCnt++;
		}
		objBR.close();
		int intReg;
		int intTmp=0;
		double dblStt;
		double dblDig=90;
		for(int i=0;i<intCnt;i++){
			dblStt=dblDig;
			intReg=(int)(dblDat[i]/intSum*360);
			dblDig-=intReg;
			intTmp+=intReg;
			if(i==4){intReg=(int)Math.ceil(360-intTmp+intReg);}
			objGrh.setColor(new Color(aryColor[i][0],aryColor[i][1],aryColor[i][2]));
			objGrh.fillArc(50,50,250,250,(int)dblStt,(intReg * -1));
		}
		objGrh.setFont(new Font("alias-fixed-jisx0208",Font.BOLD,16));
		objGrh.drawString("アンケート集計結果",10,15);
		ServletOutputStream objSOS=response.getOutputStream();
		JPEGImageEncoder objEnc=JPEGCodec.createJPEGEncoder(objSOS);
		objEnc.encode(objImg);
	}
}
