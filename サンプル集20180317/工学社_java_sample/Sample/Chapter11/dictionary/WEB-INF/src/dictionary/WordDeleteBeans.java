package dictionary;

public class WordDeleteBeans {
	
	public void deleteDictionary(int id) {
		
		DataBaseBeans db = new DataBaseBeans();
		DictionaryBeans dbDictionary = new DictionaryBeans();
		
		try {
			db.connect();
			dbDictionary.setId_(id);
			dbDictionary.deleteDictionaryInfo(db);
			db.disConnect();
		} catch (Exception e) {
		}
	}
}