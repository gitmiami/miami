import java.io.*;

public class AddLineNumber {
	public static void main(String[] args) {
		try {
			// ファイル入力用のストリームを構築
			FileReader fr = new FileReader("C:\\java\\test.txt");
			BufferedReader br = new BufferedReader(fr);
			
			// ファイル出力用のストリームを構築
			FileWriter fw = new FileWriter("C:\\java\\test2.txt");
			BufferedWriter bw = new BufferedWriter(fw);

			String s; // 1行ずつ読み込んだ文字列を格納する
			int lineNumber = 1; // 行番号のカウントをする
			while((s = br.readLine()) != null) {
				bw.write(lineNumber + ":" + s + "\r\n");
				lineNumber++;
			}
			br.close(); // ファイル入力のストリームを閉じる
			bw.close(); // ファイル出力ストリームを閉じる
		} catch (IOException e) {
			System.out.println(e);
		}
	}
}
