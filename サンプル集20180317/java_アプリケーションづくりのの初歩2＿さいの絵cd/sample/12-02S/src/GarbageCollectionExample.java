class DataSet {
	double[] d = new double[1000];
}

public class GarbageCollectionExample {
	public static void main(String[] args) {
		System.out.println("�󂫃������T�C�Y:" + Runtime.getRuntime().freeMemory());
		DataSet[] data = new DataSet[100];
		for(int i = 0; i < 100; i++) {
			data[i] = new DataSet();
			data[i] = null;
			System.out.println("�����ς݃C���X�^���X��:" + (i + 1) + 
			"  �󂫃������T�C�Y:" + Runtime.getRuntime().freeMemory());
		}
	}
}
