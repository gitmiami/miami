public class ExceptionExample4 {
	public static void main(String[] args) {
		int a = 4;
		int b = 0;
		try {
			int c = a / b;
			System.out.println("c�̒l��" + c);
		} 
		catch (ArithmeticException e) {
			System.out.println("��O���L���b�`���܂���");
			System.out.println(e);
			return;
		}
		finally {
			System.out.println("finally�u���b�N�̏����ł�");
		}
		System.out.println("�v���O�������I�����܂�");
	}
}
