import java.io.*;
import java.sql.*;
import java.util.*;
import java.text.*;
import java.util.regex.*;

/** 入力データの妥当性チェックをおこなう。
  * @author  Yamada Yoshihiro
  * @version 1.0
  */
public class CheckUtil implements Serializable {
	/** 入力データの必須チェックをおこなう。
	 * @param  strVal 入力された値
	 * @param  strErr エラーメッセージ
	 * @return 正常時は空文字列、エラー時にはエラーメッセージ
	 */
	public static String requiredCheck(String strVal,String strErr) {
		if(strVal!=null && !strVal.equals("")){
			return "";
		}else{
			return strErr + "は必須入力です" + System.getProperty("line.separator");
		}
	}
	/** 入力データの文字列長チェックをおこなう。
	 * @param  strVal 入力された値
	 * @param  intMax 最大文字列長
	 * @param  strErr エラーメッセージ
	 * @return 正常時は空文字列、エラー時にはエラーメッセージ
	 */
	public static String lengthCheck(String strVal,int intMax,String strErr){
		if(strVal!=null && !strVal.equals("")){
			if(strVal.length()<=intMax){
				return "";
			}else{
				return strErr + "は" + intMax + "桁以下で入力してください" + System.getProperty("line.separator");
			}
		}else{
			return "";
		}
	}
	/** 入力データの全角チェックをおこなう。
	 * @param  strVal 入力された値
	 * @param  strErr エラーメッセージ
	 * @return 正常時は空文字列、エラー時にはエラーメッセージ
	 */
	public static String ZenCheck(String strVal,String strErr){
		if(strVal!=null && !strVal.equals("")){
			try {
				if(strVal.getBytes("Shift_JIS").length==strVal.length()*2){
					return "";
				}else{
					return strErr + "は全角（二バイト文字）で入力してください" + System.getProperty("line.separator");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "";
		}else{
			return "";
		}
	}
	/** 入力データの半角チェックをおこなう。
	 * @param  strVal 入力された値
	 * @param  strErr エラーメッセージ
	 * @return 正常時は空文字列、エラー時にはエラーメッセージ
	 */
	public static String HanCheck(String strVal,String strErr){
		if(strVal!=null && !strVal.equals("")){
			try {
				if(strVal.getBytes("Shift_JIS").length==strVal.length()){
					return "";
				}else{
					return strErr + "は半角（一バイト文字）で入力してください" + System.getProperty("line.separator");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "";
		}else{
			return "";
		}
	}
	/** 入力データの数値型チェックをおこなう。
	 * @param  strVal 入力された値
	 * @param  strErr エラーメッセージ
	 * @return 正常時は空文字列、エラー時にはエラーメッセージ
	 */
	public static String numberTypeCheck(String strVal,String strErr){
		if(strVal!=null && !strVal.equals("")){
			try {
				int intVal=Integer.parseInt(strVal);
			} catch (NumberFormatException e) {
				return strErr + "は数値で入力してください" + System.getProperty("line.separator");
			}
			return "";
		}else{
			return "";
		}
	}
	/** 入力データの日付型チェックをおこなう。
	 * @param  strVal 入力された値
	 * @param  strErr エラーメッセージ
	 * @return 正常時は空文字列、エラー時にはエラーメッセージ
	 */
	public static String dateTypeCheck(String strVal,String strErr){
		if(strVal!=null && !strVal.equals("")){
			Pattern objPtn=Pattern.compile("^[0-9]{4}-[0-9]{1,2}-[0-9]{1,2}$",Pattern.CASE_INSENSITIVE);
			Matcher objMth=objPtn.matcher(strVal);
			if(objMth.find()){
				StringTokenizer objTkn=new StringTokenizer(strVal,"-");
				int intYear =Integer.parseInt((String)objTkn.nextToken());
				int intMonth=Integer.parseInt((String)objTkn.nextToken());
				int intDay  =Integer.parseInt((String)objTkn.nextToken());
				Calendar objCal=Calendar.getInstance();
				objCal.set(intYear,intMonth-1,intDay);
				if(objCal.get(Calendar.YEAR)!=intYear || objCal.get(Calendar.MONTH)!=intMonth-1 || objCal.get(Calendar.DATE)!=intDay){
					return strErr + "は正しい日付で入力してください" + System.getProperty("line.separator");
				}else{
					return "";
				}
			}else{
				return strErr + "は日付形式で入力してください" + System.getProperty("line.separator");
			}
		}else{
			return "";
		}
	}
	/** 入力データの日付型チェックをおこなう。
	 * @param  strYear  年
	 * @param  strMonth 月
	 * @param  strDay   日
	 * @param  strErr   エラーメッセージ
	 * @return 正常時は空文字列、エラー時にはエラーメッセージ
	 */
	public static String dateTypeCheck(String strYear,String strMonth,String strDay,String strErr){
		int intYear,intMonth,intDay;
		try {
			intYear =Integer.parseInt(strYear);
			intMonth=Integer.parseInt(strMonth);
			intDay  =Integer.parseInt(strDay);
		} catch (NumberFormatException e) {
			return "年月日は数値で入力してください" + System.getProperty("line.separator");
		}
		Calendar objCal=Calendar.getInstance();
		objCal.set(intYear,intMonth-1,intDay);
		if(objCal.get(Calendar.YEAR)!=intYear || objCal.get(Calendar.MONTH)!=intMonth-1 || objCal.get(Calendar.DATE)!=intDay){
			return strErr + "は正しい日付形式で入力してください" + System.getProperty("line.separator");
		}else{
			return "";
		}
	}
	/** 入力データの範囲チェックをおこなう。
	 * @param  strVal 入力された値
	 * @param  intMax 最大値
	 * @param  intMin 最小値
	 * @param  strErr エラーメッセージ
	 * @return 正常時は空文字列、エラー時にはエラーメッセージ
	 */
	public static String rangeCheck(String strVal,int intMax,int intMin,String strErr){
		if(strVal!=null && !strVal.equals("")){
			int intVal=0;
			try {
				intVal=Integer.parseInt(strVal);
			} catch (NumberFormatException e) {
				return strErr + "は数値で入力してください" + System.getProperty("line.separator");
			}
			if(intVal>=intMin && intVal<=intMax){
				return "";
			}else{
				return strErr + "は" + intMin + "桁以上、かつ" + intMax + "桁以下で入力してください" + System.getProperty("line.separator");
			}
		}else{
			return "";
		}
	}
	/** 入力データの正規表現チェックをおこなう。
	 * @param  strVal 入力された値
	 * @param  strPtn 正規表現パターン
	 * @param  strErr エラーメッセージ
	 * @return 正常時は空文字列、エラー時にはエラーメッセージ
	 */
	public static String regExCheck(String strVal,String strPtn,String strErr){
		if(strVal!=null && !strVal.equals("")){
			Pattern objPtn=Pattern.compile(strPtn,Pattern.CASE_INSENSITIVE);
			Matcher objMth=objPtn.matcher(strVal);
			if(objMth.find()){
				return "";
			}else{
				return strErr + "を正しい形式で入力してください" + System.getProperty("line.separator");
			}
		}else{
			return "";
		}
	}
	/** 入力データの比較チェックをおこなう。
	 * @param  strVal1 比較する値1
	 * @param  strVal2 比較する値2
	 * @param  strErr1 エラーメッセージ1
	 * @param  strErr2 エラーメッセージ2
	 * @return 正常時は空文字列、エラー時にはエラーメッセージ
	 */
	public static String compareCheck(String strVal1,String strVal2,String strErr1,String strErr2){
		if(strVal1!=null && !strVal1.equals("") && strVal2!=null && !strVal2.equals("")){
			if(strVal1.compareTo(strVal2)<0){
				return "";
			}else{
				return strErr1 + "は" + strErr2 + "より小さい値を指定してください" + System.getProperty("line.separator");
			}
		}else{
			return "";
		}
	}
	/** 入力データの重複チェックをおこなう。
	 * @param  strSql チェックに使用するSQL命令
	 * @param  strErr エラーメッセージ
	 * @return 正常時は空文字列、エラー時にはエラーメッセージ
	 */
	public static String duplicateCheck(String strSql,String strErr) {
		try {
			Class.forName("org.gjt.mm.mysql.Driver");
			Connection db=DriverManager.getConnection("jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=Shift_JIS");
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery(strSql);
			if(rs.next()){
				return strErr + "が重複しています" + System.getProperty("line.separator");
			}else{
				return "";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
}
