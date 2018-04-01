package gm;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class MakeGreetingMail {

	private final static String HTMLMAIL = "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD"
		+ "HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\"><html><body>"
		+ "<table border=\"1\" frame=\"border\" rules=\"none\" align=\"center\">"
		+ "<th width=\"350\" align=\"center\" bgcolor=\"lightblue\">"
		+ "四季のグリーティングメール</th>##table##</table></body></html>";
	private final static String HTMLROW = "<tr><td width=\"350\" align=\"center\">"
		+ "##replace##</td></tr>";
	private final static String IMG = "<tr><td width=\"350\" align=\"center\">"
		+ "<img src= \"http://localhost:8080/GreetingMail/##img##\" height=210 width=280>"
		+ "</td></tr>";

	Pattern pattern;
	Matcher matcher;

	private String htmltable;
	private String htmlrow;
	private String img;
	private String htmlmail;

	public void replaceTableRow(String tablerow) {
		htmlrow = HTMLROW;
		pattern = Pattern.compile("##replace##");
		matcher = pattern.matcher(htmlrow);

		if (htmltable == null) {
			htmlrow = matcher.replaceFirst(tablerow + "様");
			htmltable = htmlrow;
		} else {
			htmlrow = matcher.replaceFirst(tablerow);
			htmltable = htmltable + htmlrow;
		}
	}

	public void replaceImg(String picturepass) {
		img = IMG;
		pattern = Pattern.compile("##img##");
		matcher = pattern.matcher(img);
		img = matcher.replaceAll(picturepass);
		htmltable = htmltable + img;
	}

	public String replaceTable() {
		htmlmail = HTMLMAIL;
		pattern = Pattern.compile("##table##");
		matcher = pattern.matcher(htmlmail);
		htmlmail = matcher.replaceAll(htmltable);
		return htmlmail;
	}
}