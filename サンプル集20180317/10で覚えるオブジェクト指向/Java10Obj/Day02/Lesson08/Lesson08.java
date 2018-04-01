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
    CoinBank coinbank1 = new CoinBank("タカシ", 1000);
    System.out.println(coinbank1.getOwner() + "の貯金箱を作りました");

    CoinBank coinbank2 = new CoinBank("マユミ", 200);
    System.out.println(coinbank2.getOwner() + "の貯金箱を作りました");

    CoinBank coinbank3 = new CoinBank("コウジ", 300);
    System.out.println(coinbank3.getOwner() + "の貯金箱を作りました");

    coinbank1.save(500);
    coinbank2.save(1000);
    coinbank3.save(1500);

    System.out.println("-------------------------");
    System.out.println("全貯金箱の貯金を合わせると" + CoinBank.getTotal() + "円になります。");
  }
}
