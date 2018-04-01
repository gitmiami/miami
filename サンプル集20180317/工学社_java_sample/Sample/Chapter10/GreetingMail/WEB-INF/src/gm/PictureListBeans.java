package gm;

import java.io.Serializable;
import java.sql.ResultSet;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class PictureListBeans implements Serializable {

	PictureBeans pictureList[];
	
	public PictureListBeans() {
		pictureList = new PictureBeans[8];
	}

	public void setPictureList() {
		DataBaseBeans db = new DataBaseBeans();
		try {
			db.connect();
			setPicture(db);
			db.disConnect();
		} catch (Exception e) {
		}
	}

	public void setPicture(DataBaseBeans db) throws Exception {
		String sql;
		ResultSet rs;
		PictureBeans pb;
		int i = 0;

		sql = "SELECT * FROM picture_db";
		rs = db.executeQuery(sql);

		while (rs.next()) {
			pb = new PictureBeans();
			pb.setPictureName(rs.getString("picture_name"));
			pb.setPicturePass(rs.getString("file_pass"));
			pictureList[i] = pb;
			i++;
		}
	}

	public PictureBeans[] getPictureList() {
		return pictureList;
	}
}