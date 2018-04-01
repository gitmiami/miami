package gm;

import java.io.Serializable;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class PictureBeans implements Serializable {

	private String picturename;
	private String picturepass;

	public PictureBeans() {
	}

	public String getPictureName() {
		return picturename;
	}

	public void setPictureName(String picturename) {
		this.picturename = picturename;
	}

	public String getPicturePass() {
		return picturepass;
	}

	public void setPicturePass(String picturepass) {
		this.picturepass = picturepass;
	}
}