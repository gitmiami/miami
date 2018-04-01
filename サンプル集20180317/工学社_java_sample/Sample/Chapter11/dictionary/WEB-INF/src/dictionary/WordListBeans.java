package dictionary;

import java.io.Serializable;
import java.sql.ResultSet;
import java.util.ArrayList;

public class WordListBeans implements Serializable {
	
	private ArrayList wordListData_;
	
	public WordListBeans() {
		wordListData_ = new ArrayList();
	}
	
	public void setWordList() {
		String sql;
		ResultSet rs;
		DictionaryBeans wrbWordRegistry;		
		DataBaseBeans db = new DataBaseBeans();
		
		try{
			db.connect();
			sql = "SELECT * FROM DICTIONARY";
			rs = db.executeQuery(sql);
			
			while (rs.next()) {
				wrbWordRegistry = new DictionaryBeans();
				wrbWordRegistry.setId_(rs.getInt("WORD_ID"));
				wrbWordRegistry.setWord_(rs.getString("WORD"));
				wrbWordRegistry.setKana_(rs.getString("KANA"));
				wrbWordRegistry.setMeaning_(rs.getString("MEANING"));
				wordListData_.add(wrbWordRegistry);
			}
			
			db.disConnect();
		} catch (Exception e) {
		}
	}
	
	public ArrayList getWordlistdata() {
		return wordListData_;
	}
	
	public void setWordlistdata(ArrayList wordListData_) {
		this.wordListData_ = wordListData_;
	}
}
