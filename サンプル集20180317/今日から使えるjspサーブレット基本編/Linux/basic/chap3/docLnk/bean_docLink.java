package beanYama;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class bean_docLink implements Serializable {
	public bean_docLink(){}
	public int getListCount(String strPth)
		throws IOException,FileNotFoundException{
		int intNum=0;
		FileReader objFR=new FileReader(strPth);
		BufferedReader objBR=new BufferedReader(objFR);
		while(objBR.ready()){
			objBR.readLine();
			++intNum;
		}
		objBR.close();
		return intNum;
	}
	public int getListIndex(String strPth,String strCur)
		throws IOException,FileNotFoundException{
		int intCnt=0;
		strCur=strCur.substring(strCur.lastIndexOf("/")+1);
		FileReader objFR=new FileReader(strPth);
		BufferedReader objBR=new BufferedReader(objFR);
		while(objBR.ready()){
			intCnt++;
			String strRst=objBR.readLine();
			StringTokenizer objTkn=new StringTokenizer(strRst,",");
			if(strCur.equals(objTkn.nextToken())){break;}
		}
		objBR.close();
		return intCnt;
	}
	public String[] getNthDescription(String strPath,int intIndex)
		throws IOException,FileNotFoundException {
		int intCnt=0;
		String strRst=null;
		String[] aryRst=new String[4];
		FileReader objFR=new FileReader(strPath);
		BufferedReader objBR=new BufferedReader(objFR);
		while(objBR.ready()){
			strRst=objBR.readLine();
			intCnt++;
			if(intCnt==intIndex){break;}
		}
		StringTokenizer objTkn=new StringTokenizer(strRst,",");
		aryRst[0]=objTkn.nextToken();
		aryRst[1]=objTkn.nextToken();
		aryRst[2]=objTkn.nextToken();
		aryRst[3]=objTkn.nextToken();
		return aryRst;
	}
	public String[] getPreviousDescription(String strPath,String strCur)
		throws IOException,FileNotFoundException {
		String strRst=null;
		String[] aryRstPrv={"","","",""};
		String[] aryRstCur={"","","",""};
		StringTokenizer objTkn;
		strCur=strCur.substring(strCur.lastIndexOf("/")+1);
		FileReader objFR=new FileReader(strPath);
		BufferedReader objBR=new BufferedReader(objFR);
		while(objBR.ready()){
			strRst=objBR.readLine();
			objTkn=new StringTokenizer(strRst,",");
			aryRstCur[0]=objTkn.nextToken();
			aryRstCur[1]=objTkn.nextToken();
			aryRstCur[2]=objTkn.nextToken();
			aryRstCur[3]=objTkn.nextToken();
			if(aryRstCur[0].equals(strCur) && aryRstPrv[0]!=""){break;}
			aryRstPrv[0]=aryRstCur[0];
			aryRstPrv[1]=aryRstCur[1];
			aryRstPrv[2]=aryRstCur[2];
			aryRstPrv[3]=aryRstCur[3];
		}
		return aryRstPrv;
	}
	public String[] getNextDescription(String strPath,String strCur)
		throws IOException,FileNotFoundException {
		boolean flag=false;
		String strRst=null;
		String[] aryRst=new String[4];
		String[] aryRstCur={"","","",""};
		String[] aryRstFst={"","","",""};
		StringTokenizer objTkn;
		strCur=strCur.substring(strCur.lastIndexOf("/")+1);
		FileReader objFR=new FileReader(strPath);
		BufferedReader objBR=new BufferedReader(objFR);
		while(objBR.ready()){
			strRst=objBR.readLine();
			objTkn=new StringTokenizer(strRst,",");
			aryRstCur[0]=objTkn.nextToken();aryRstCur[1]=objTkn.nextToken();
			aryRstCur[2]=objTkn.nextToken();aryRstCur[3]=objTkn.nextToken();
			if(!flag){
				aryRstFst[0]=aryRstCur[0];aryRstFst[1]=aryRstCur[1];
				aryRstFst[2]=aryRstCur[2];aryRstFst[3]=aryRstCur[3];
				flag=true;
			}
			if(aryRstCur[0].equals(strCur)){
				if(objBR.ready()){
					strRst=objBR.readLine();
					objTkn=new StringTokenizer(strRst,",");
					aryRst[0]=objTkn.nextToken();aryRst[1]=objTkn.nextToken();
					aryRst[2]=objTkn.nextToken();aryRst[3]=objTkn.nextToken();
				}else{
					aryRst=aryRstFst;
				}
			}
		}
		return aryRst;
	}
}