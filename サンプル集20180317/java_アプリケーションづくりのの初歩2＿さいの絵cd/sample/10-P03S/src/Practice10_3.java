public class Practice10_3 {
	public static void main(String[] args) {
		try {
			// �����̏���
			System.out.println("����������ɍs���܂���");
		} 
		catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("��O����A");
		}
		catch(Exception e) {
			System.out.println("��O����B");
		}
		System.out.println("�v���O�������I�����܂�");
	}
}
