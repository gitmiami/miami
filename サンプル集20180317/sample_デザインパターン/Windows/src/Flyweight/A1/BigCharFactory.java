import java.util.Hashtable;

public class BigCharFactory {
    // ���łɍ����BigChar�̃C���X�^���X���Ǘ�
    private Hashtable pool = new Hashtable();
    // Singleton�p�^�[��
    private static BigCharFactory singleton = new BigCharFactory();
    // �R���X�g���N�^
    private BigCharFactory() {
    }
    // �B��̃C���X�^���X�𓾂�
    public static BigCharFactory getInstance() {
        return singleton;
    }
    // BigChar�̃C���X�^���X�����i���L�j
    public synchronized BigChar getBigChar(char charname) {
        BigChar bc = (BigChar)pool.get("" + charname);
        if (bc == null) {
            bc = new BigChar(charname); // ������BigChar�̃C���X�^���X�𐶐�
            pool.put("" + charname, bc);
        }
        return bc;
    }
}
