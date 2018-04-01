package beanYama;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class bean_grhCnt implements Serializable {
	private String pic;
	public bean_grhCnt(){
		this.pic="pic";
	}
	public int increment(String strPath, String strCur,int intNum)
		throws IOException, FileNotFoundException {
		int intRtn=0;
		boolean flag=false;
		String strLne=null;
		File objFl1=new File(strPath);
		FileReader objFR=new FileReader(objFl1);
		BufferedReader objBR=new BufferedReader(objFR);
		File objFl2=new File("cnt.tmp");
		FileWriter objFW=new FileWriter(objFl2,false);
		BufferedWriter objBW=new BufferedWriter(objFW,10);
		while(objBR.ready()){
			strLne=objBR.readLine();
			StringTokenizer objTkn=new StringTokenizer(strLne,"\t");
			String strDat=objTkn.nextToken();
			int intDat=Integer.parseInt(objTkn.nextToken());
			if(strDat.equals(strCur)){
				intDat+=intNum;
				intRtn=intDat;
				flag=true;
			}
			objBW.write(strDat + "\t" + intDat);
			objBW.newLine();
		}
		if(!flag){
			objBW.write(strCur + "\t" + intNum);
			objBW.newLine();
			intRtn=intNum;
		}
		objBR.close();
		objBW.close();
		objFl1.delete();
		objFl2.renameTo(objFl1);
		return intRtn;
	}
	public String disp(String strPath,String strCur)
		throws IOException,FileNotFoundException {
		StringBuffer strRst=new StringBuffer();
		FileReader objFR=new FileReader(strPath);
		BufferedReader objBR=new BufferedReader(objFR);
		while(objBR.ready()){
			String strLne=objBR.readLine();
			StringTokenizer objTkn=new StringTokenizer(strLne,"\t");
			String strDat=objTkn.nextToken();
			String strNum=objTkn.nextToken();
			if(strCur.equals(strDat)){
				for(int i=0;i<strNum.length();i++){
					Character chrTmp=new Character(strNum.charAt(i));
					strRst.append("<img src='" + this.pic + chrTmp.toString());
					strRst.append(".gif' alt='" + chrTmp.toString() + "'>");
				}
				break;
			}
		}
		objBR.close();
		return strRst.toString();
	}
	public int hits(String strPath,String strCur)
		throws IOException,FileNotFoundException {
		int intNum=0;
		FileReader objFR=new FileReader(strPath);
		BufferedReader objBR=new BufferedReader(objFR);
		while(objBR.ready()){
			String strLne=objBR.readLine();
			StringTokenizer objTkn=new StringTokenizer(strLne,"\t");
			String strDat=objTkn.nextToken();
			intNum=Integer.parseInt(objTkn.nextToken());
			if(strCur.equals(strDat)){
				break;
			}
		}
		objBR.close();
		return intNum;
	}
	public void   setPic(String pic){this.pic=pic;}
	public String getPic()          {return pic;}
}
