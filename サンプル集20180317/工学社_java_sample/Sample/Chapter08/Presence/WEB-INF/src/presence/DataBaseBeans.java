package presence;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class DataBaseBeans implements Serializable {
		
	public DataBaseBeans() {
	}

	private final static String DRIVER = "org.gjt.mm.mysql.Driver";
	private final static String URL = "jdbc:mysql:///presence_db?useUnicode=true&characterEncoding=SJIS";
	private final static String USER = "root";
	private final static String PASSWD = "root";
	private Connection con;
	private Statement stmt;

	public void connect() throws Exception {
		Class.forName(DRIVER);
		con = DriverManager.getConnection(URL, USER, PASSWD);
		stmt = con.createStatement();
	}

	public void disConnect() throws Exception {
		if (stmt != null) {	
			stmt.close();
		}
		if (con != null) {
			con.close();
		}
	}
		
	public ResultSet executeQuery(String sql) throws Exception {
		return stmt.executeQuery(sql);
	}

	public void executeUpdate(String sql) throws Exception {
		stmt.executeUpdate(sql);
	}
}