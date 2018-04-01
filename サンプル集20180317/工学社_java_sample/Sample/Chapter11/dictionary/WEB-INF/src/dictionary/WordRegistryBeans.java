package dictionary;

import java.io.Serializable;

public class WordRegistryBeans implements Serializable {
	
	public void addDictionary(String arg_word,String arg_kana,String arg_meaning) {
		DataBaseBeans db = new DataBaseBeans();
		DictionaryBeans dbDictionary = new DictionaryBeans();
		
		try {
			db.connect();
			dbDictionary.setWord_(arg_word);
			dbDictionary.setKana_(arg_kana);
			dbDictionary.setMeaning_(arg_meaning);
			dbDictionary.addDictionaryInfo(db);
			db.disConnect();
		} catch (Exception e) {
		}
	}
}