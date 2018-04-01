class CoinBank {
  private String owner;
  private int balance;
  private static int total;

  CoinBank(String owner, int balance) {
    this.owner = owner;
    if (balance >= 0) {
      this.balance = balance;
    }
      this.total += balance;
  }

  static int getTotal() {
    return total;
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
      this.total += amount;
  }
}


class Test{
  public static void main(String args []) {
    CoinBank coinbank1 = new CoinBank("�^�J�V", 1000);
    System.out.println(coinbank1.getOwner() + "�̒����������܂���");

    CoinBank coinbank2 = new CoinBank("�}���~", 200);
    System.out.println(coinbank2.getOwner() + "�̒����������܂���");

    CoinBank coinbank3 = new CoinBank("�R�E�W", 300);
    System.out.println(coinbank3.getOwner() + "�̒����������܂���");

    coinbank1.save(500);
    coinbank2.save(1000);
    coinbank3.save(1500);

    System.out.println("-------------------------");
    System.out.println("�S�������̒��������킹���" + CoinBank.getTotal() + "�~�ɂȂ�܂��B");
  }
}
