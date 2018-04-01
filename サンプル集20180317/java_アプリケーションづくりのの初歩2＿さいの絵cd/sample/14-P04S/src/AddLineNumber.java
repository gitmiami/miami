import java.io.*;

public class AddLineNumber {
	public static void main(String[] args) {
		try {
			// �t�@�C�����͗p�̃X�g���[�����\�z
			FileReader fr = new FileReader("C:\\java\\test.txt");
			BufferedReader br = new BufferedReader(fr);
			
			// �t�@�C���o�͗p�̃X�g���[�����\�z
			FileWriter fw = new FileWriter("C:\\java\\test2.txt");
			BufferedWriter bw = new BufferedWriter(fw);

			String s; // 1�s���ǂݍ��񂾕�������i�[����
			int lineNumber = 1; // �s�ԍ��̃J�E���g������
			while((s = br.readLine()) != null) {
				bw.write(lineNumber + ":" + s + "\r\n");
				lineNumber++;
			}
			br.close(); // �t�@�C�����͂̃X�g���[�������
			bw.close(); // �t�@�C���o�̓X�g���[�������
		} catch (IOException e) {
			System.out.println(e);
		}
	}
}
