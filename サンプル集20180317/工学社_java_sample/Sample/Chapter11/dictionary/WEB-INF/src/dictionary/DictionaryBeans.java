package dictionary;

import java.io.Serializable;

public class DictionaryBeans implements Serializable {
	
	private int id_;
	private String word_;
	private String kana_;
	private String meaning_;
	
	public DictionaryBeans(){
		id_=0;
		word_="";
		kana_="";
		meaning_="";
	}
	
	public void addDictionaryInfo(DataBaseBeans db) throws Exception {
		String sql;
		sql = "INSERT INTO DICTIONARY(WORD, KANA, MEANING) " +
		"VALUES('"+ word_ + "', '" + kana_ + "', '" + meaning_ + "')";
		db.executeUpdate(sql);
	}
	
	public void deleteDictionaryInfo(DataBaseBeans db) throws Exception {
		String sql;
		sql = "DELETE FROM DICTIONARY WHERE WORD_ID = " +
		id_ + ";";
		db.executeUpdate(sql);
	}
	
	public int getId_() {
		return id_;
	}
	
	public void setId_(int id_) {
		this.id_ = id_;
	}
	
	public String getWord_() {
		return word_;
	}
	
	public void setWord_(String word_) {
		this.word_ = word_;
	}
	
	public String getKana_() {
		return kana_;
	}
	
	public void setKana_(String kana_) {
		this.kana_ = kana_;
	}
	
	public String getMeaning_() {
		return meaning_;
	}
	
	public void setMeaning_(String meaning_) {
		this.meaning_ = meaning_;
	}
}
