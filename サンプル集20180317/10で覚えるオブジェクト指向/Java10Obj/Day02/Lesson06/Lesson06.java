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
    CoinBank coinbank1 = new CoinBank("�^�J�V", 1000);
    CoinBank coinbank2 = new CoinBank("���~�R", 5000);

    System.out.println(coinbank1.getOwner() + "�̒������ɂ́A" + coinbank1.getBalance() +"�~�����Ă��܂�");
    System.out.println(coinbank2.getOwner() + "�̒������ɂ́A" + coinbank2.getBalance() +"�~�����Ă��܂�");
    System.out.println("--------------------------------------");

    System.out.println(coinbank1.getOwner() + "��500�~�������܂�" );
    coinbank1.save(500);
    System.out.println(coinbank1.getOwner() + "�̒������̒��g�́A" + coinbank1.getBalance() +"�~�ɂȂ�܂���");

    System.out.println(coinbank2.getOwner() + "��200�~�������܂�" );
    coinbank2.save(200);
    System.out.println(coinbank2.getOwner() + "�̒������̒��g�́A" + coinbank2.getBalance() +"�~�ɂȂ�܂���");
    System.out.println("--------------------------------------");
  }
}
