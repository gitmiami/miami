class DataSet {
	int x;
	int y;
}

public class FreeMemoryTest {
	public static void main(String[] args) {
		System.out.println("空きメモリサイズ:" +
			Runtime.getRuntime().freeMemory());
		DataSet[] data = new DataSet[100];
		for(int i = 0; i < 100; i++) {
			data[i] = new DataSet();
			System.out.println("生成済みインスタンス数:" + (i + 1) + 
			"  空きメモリサイズ:" + Runtime.getRuntime().freeMemory());
		}	
	}
}
