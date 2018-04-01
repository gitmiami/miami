class Outer {
	private String message = "Outerクラスのprivateなインスタンス変数です";

	void doSomething() {
		Inner inner = new Inner();
		inner.print();
	}
	
	class Inner {
		void print() {
			System.out.println("Innerクラスのprintメソッドが呼ばれました");
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
