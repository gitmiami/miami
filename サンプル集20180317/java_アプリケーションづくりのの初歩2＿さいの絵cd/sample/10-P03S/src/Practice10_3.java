public class Practice10_3 {
	public static void main(String[] args) {
		try {
			// 何かの処理
			System.out.println("処理が正常に行われました");
		} 
		catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("例外処理A");
		}
		catch(Exception e) {
			System.out.println("例外処理B");
		}
		System.out.println("プログラムを終了します");
	}
}
