package dictionary;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DataBaseBeans implements Serializable{
	
	public DataBaseBeans(){
	}
	
	private final static String DRIVER = "org.gjt.mm.mysql.Driver";
	private final static String URL =
	"jdbc:mysql:///dictionary_db?useUnicode=true&characterEncoding=SJIS";
	private final static String USER = "root";
	private final static String PASSWD = "pass";
	private Connection con;
	private Statement stmt;
	
	public void connect() throws Exception {
		Class.forName(DRIVER);
		con = DriverManager.getConnection(URL, USER, PASSWD);
		stmt = con.createStatement();
	}
	
	public void disConnect() throws Exception{
		if (stmt != null) {	
			stmt.close();
		}
		if (con != null) {
			con.close();
		}
	}
	
	public ResultSet executeQuery(String sql) throws Exception{
		return stmt.executeQuery(sql);
	}
	
	public void executeUpdate(String sql) throws Exception{
		stmt.executeUpdate(sql);
	}
}