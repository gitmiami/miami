class SimpleClass {
	void doSomething() {
		int array[] = new int[3];
		array[10] = 99;
		System.out.println("doSomething���\�b�h���I�����܂�");
	}
}

public class ExceptionExample5 {
	public static void main(String args[]) {
		SimpleClass obj = new SimpleClass();
		try {
			obj.doSomething();
		} 
		catch (ArrayIndexOutOfBoundsException e) {
			System.out.println("��O���L���b�`���܂���");
			e.printStackTrace();
		}
	}
}
