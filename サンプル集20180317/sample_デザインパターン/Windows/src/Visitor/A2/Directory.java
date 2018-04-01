import java.util.Iterator;
import java.util.Vector;

public class Directory extends Entry {
    private String name;                    // �f�B���N�g���̖��O
    private Vector dir = new Vector();      // �f�B���N�g���G���g���̏W��
    public Directory(String name) {         // �R���X�g���N�^
        this.name = name;
    }
    public String getName() {               // ���O�𓾂�
        return name;
    }
    public int getSize() {                  // �T�C�Y�𓾂�
        SizeVisitor v = new SizeVisitor();  
        accept(v);                          
        return v.getSize();                 
    }
    public Entry add(Entry entry) {         // �G���g���̒ǉ�
        dir.add(entry);
        return this;
    }
    public Iterator iterator() {
        return dir.iterator();
    }
    public void accept(Visitor v) {
        v.visit(this);
    }
}
