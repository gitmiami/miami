package game;
import java.io.*;
import java.util.Vector;

public class Memento implements Serializable {  
    int money;                              // ������
    Vector fruits;                          // �t���[�c
    public int getMoney() {                 // �������𓾂�inarrow interface�j
        return money;
    }
    Memento(int money) {                    // �R���X�g���N�^�iwide interface�j
        this.money = money;
        this.fruits = new Vector();
    }
    void addFruit(String fruit) {           // �t���[�c��ǉ�����iwide interface)
        fruits.add(fruit);
    }
}
