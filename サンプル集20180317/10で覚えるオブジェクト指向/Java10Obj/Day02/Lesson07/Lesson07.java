class CoinBank {
  private String owner;
  private int balance;

  CoinBank(String owner, int balance) {
    this.owner = owner;
    if (balance >= 0) {
      this.balance = balance;
    }
  }
  
  void setOwner(String owner) {
    this.owner = owner;
  }
  
  String getOwner() {
    return this.owner;
  }

  int getBalance() {
    return this.balance;
  }

  void save(int amount) {
    this.balance += amount;
  }
}

class Test{
  public static void main(String args []) {
    int data1 = 10;
    int data2 = data1;

    CoinBank coinbank1 = new CoinBank("�}�T�q��", 1500);
    CoinBank coinbank2 = new CoinBank("�}�T�q��", 1500);
    CoinBank coinbank3 = coinbank1;

    System.out.println("data1�̒��g��" + data1);	
    System.out.println("data2�̒��g��" + data2);
    System.out.println("----------------------------");

    System.out.println("coinbank1�̎������" + coinbank1.getOwner() + "�A���ɂ�" + coinbank1.getBalance() + "�~�����Ă��܂�");
    System.out.println("coinbank2�̎������" + coinbank2.getOwner() + "�A���ɂ�" + coinbank2.getBalance() + "�~�����Ă��܂�");
    System.out.println("coinbank3�̎������" + coinbank3.getOwner() + "�A���ɂ�" + coinbank3.getBalance() + "�~�����Ă��܂�");

    if (coinbank1 == coinbank2) {
      System.out.println("coinbank1��coinbank2�͓����̂ł�");
    }else{
      System.out.println("coinbank1��coinbank2�͕ʂ̌̂ł�");
    }
    if (coinbank1 == coinbank3) {
      System.out.println("coinbank1��coinbank3�͓����̂ł�");
    }else{
      System.out.println("coinbank1��coinbank3�͕ʂ̌̂ł�");
    }
    System.out.println("----------------------------");

    System.out.println("data2�̒l��ύX���܂�");
    data2 = 15;
    System.out.println("data1�̒��g��" + data1);
    System.out.println("data2�̒��g��" + data2);
    System.out.println("----------------------------");


    System.out.println("coinbank3�̎�������}���R�ɕύX����1000�~�ǉ��Œ������܂�");
    coinbank3.setOwner("�}���R");
    coinbank3.save(1000);
    System.out.println("coinbank1�̎������" + coinbank1.getOwner() + "�A���ɂ�" + coinbank1.getBalance() + "�~�����Ă��܂�");
    System.out.println("coinbank2�̎������" + coinbank2.getOwner() + "�A���ɂ�" + coinbank2.getBalance() + "�~�����Ă��܂�");
    System.out.println("coinbank3�̎������" + coinbank3.getOwner() + "�A���ɂ�" + coinbank3.getBalance() + "�~�����Ă��܂�");
    System.out.println("----------------------------");	
  }
}
