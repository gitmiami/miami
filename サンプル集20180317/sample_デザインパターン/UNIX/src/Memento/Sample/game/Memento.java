package game;
import java.util.Vector;

public class Memento {
    int money;                              // �����
    Vector fruits;                          // �ե롼��
    public int getMoney() {                 // �����������narrow interface��
        return money;
    }
    Memento(int money) {                    // ���󥹥ȥ饯����wide interface��
        this.money = money;
        this.fruits = new Vector();
    }
    void addFruit(String fruit) {           // �ե롼�Ĥ��ɲä����wide interface��
        fruits.add(fruit);
    }
}
