package web_album;

import java.io.Serializable;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class AlbumBeans implements Serializable{
		
	private String sid;
	private String spass;
	private String alflag;
	private boolean upflag;
	private String logflag;
	private String fname;
	private String ptitle;
	private String pcomment;
	private String sphoto;
	private String sql;
	private final static String DIR = "C:/eclipse/workspace/WebAlbum/memories";
		
	public AlbumBeans(){
	}
		
	public String getSid(){
		return sid;
	}
		
	public void setSid(String sid){
		this.sid = sid;
	}
		
	public String getSpass(){
		return spass;
	}
		
	public void setSpass(String spass){
		this.spass = spass;
	}
		
	public String getAlflag(){
		return alflag;
	}
		
	public void setAlflag(String alflag){
		this.alflag = alflag;
	}
		
	public boolean getUpflag(){
		return upflag;
	}
		
	public void setUpflag(boolean upflag){
		this.upflag = upflag;
	}
		
	public String getLogflag(){
		return logflag;
	}
		
	public void setLogflag(String logflag){
		this.logflag = logflag;
	}
		
	public String getFname(){
		return fname;
	}
		
	public void setFname(String fname){
		this.fname = fname;
	}
		
	public String getPtitle(){
		return ptitle;
	}
		
	public void setPtitle(String ptitle){
		this.ptitle = ptitle;
	}
		
	public String getPcomment(){
		return pcomment;
	}
		
	public void setPcomment(String pcomment){
		this.pcomment = pcomment;
	}
		
	public String getSphoto(){
		return sphoto;
	}
		
	public void setSphoto(String sphoto){
		this.sphoto = sphoto;
	}
		
	public String getSQL(){
		return sql;
	}
		
	public void setSQL(String sql){
		this.sql = sql;
	}
		
	public String getDIR(){
		return DIR;
	}
}
