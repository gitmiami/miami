class Outer {
	private String message = "Outer�N���X��private�ȃC���X�^���X�ϐ��ł�";

	void doSomething() {
		Inner inner = new Inner();
		inner.print();
	}
	
	class Inner {
		void print() {
			System.out.println("Inner�N���X��print���\�b�h���Ă΂�܂���");
			System.out.println(message);
		}		
	}
}

public class InnerClassExample {
	public static void main(String[] args) {
		Outer outer = new Outer();
		outer.doSomething();
	}	
}
