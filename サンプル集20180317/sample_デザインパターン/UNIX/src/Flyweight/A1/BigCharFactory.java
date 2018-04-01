import java.util.Hashtable;

public class BigCharFactory {
    // ���Ǥ˺�ä�BigChar�Υ��󥹥��󥹤����
    private Hashtable pool = new Hashtable();
    // Singleton�ѥ�����
    private static BigCharFactory singleton = new BigCharFactory();
    // ���󥹥ȥ饯��
    private BigCharFactory() {
    }
    // ͣ��Υ��󥹥��󥹤�����
    public static BigCharFactory getInstance() {
        return singleton;
    }
    // BigChar�Υ��󥹥��������ʶ�ͭ��
    public synchronized BigChar getBigChar(char charname) {
        BigChar bc = (BigChar)pool.get("" + charname);
        if (bc == null) {
            bc = new BigChar(charname); // ������BigChar�Υ��󥹥��󥹤�����
            pool.put("" + charname, bc);
        }
        return bc;
    }
}
