class DataSet {
	int x;
	int y;
}

public class FreeMemoryTest {
	public static void main(String[] args) {
		System.out.println("�󂫃������T�C�Y:" +
			Runtime.getRuntime().freeMemory());
		DataSet[] data = new DataSet[100];
		for(int i = 0; i < 100; i++) {
			data[i] = new DataSet();
			System.out.println("�����ς݃C���X�^���X��:" + (i + 1) + 
			"  �󂫃������T�C�Y:" + Runtime.getRuntime().freeMemory());
		}	
	}
}
