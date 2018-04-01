class InvalidAgeException extends Exception {
	InvalidAgeException(String message) {
		super(message);
	}
}

public class MyExceptionExample {
	public static void main(String[] args) {
		int age = -10;
		try {
			if( age < 0 ) {
				throw new InvalidAgeException("�N��Ƀ}�C�i�X�̒l���w�肳��܂���");
			}
			System.out.println("�N���" + age + "�΂ł�");
		}
		catch (InvalidAgeException e) {
			System.out.println("��O���L���b�`���܂���");
			System.out.println(e);
		}
	}
}
