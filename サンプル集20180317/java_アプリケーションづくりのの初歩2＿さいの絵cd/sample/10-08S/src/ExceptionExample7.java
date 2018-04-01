class InvalidAgeException extends Exception {
	InvalidAgeException(String message) {
		super(message);
	}
}

class Person {
	int age;
	void setAge(int age) throws InvalidAgeException {
		if(age < 0) {
			throw new InvalidAgeException("�N��Ƀ}�C�i�X�̒l���w�肳��܂���");
		}
		this.age = age;
	}
}

public class ExceptionExample7 {
	public static void main(String[] args) {
		Person p = new Person();
		try {
			p.setAge(-5);
		} 
		catch (InvalidAgeException e) {
			System.out.println(e);
		}
	}
}
