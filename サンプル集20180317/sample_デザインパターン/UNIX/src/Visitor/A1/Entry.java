import java.util.Iterator;

public abstract class Entry implements Acceptor {
    public abstract String getName();                                   // ̾��������
    public abstract int getSize();                                      // ������������
    public Entry add(Entry entry) throws FileTreatmentException {       // ����ȥ���ɲä���
        throw new FileTreatmentException();
    }
    public Iterator iterator() throws FileTreatmentException {    // Iterator������
        throw new FileTreatmentException();
    }
    public String toString() {                                          // ʸ����ɽ��
        return getName() + " (" + getSize() + ")";
    }
}
