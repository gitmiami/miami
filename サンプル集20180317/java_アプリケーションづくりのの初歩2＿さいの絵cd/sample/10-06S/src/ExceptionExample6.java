public class ExceptionExample6 {
	public static void main(String[] args) {
		int[] scores = new int[5];
		int a = 4;
		int b = (int)(Math.random() * 10);
		System.out.println("b=" + b);
		try {
			int c = a / b;
			System.out.println("c�̒l��" + c);
			scores[b] = 10;
			System.out.println("����������ɍs���܂���");
		} 
		catch (ArithmeticException e) {
			System.out.println("ArithmeticException�^�̗�O���L���b�`���܂���");
			System.out.println(e);
		}
		catch (ArrayIndexOutOfBoundsException e) {
			System.out.println("ArrayIndexOutOfBoundsException�^�̗�O���L���b�`���܂���");
			System.out.println(e);
		}
		System.out.println("�v���O�������I�����܂�");
	}
}
