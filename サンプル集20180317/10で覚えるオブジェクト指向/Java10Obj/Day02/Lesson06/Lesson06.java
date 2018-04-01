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
    CoinBank coinbank1 = new CoinBank("タカシ", 1000);
    CoinBank coinbank2 = new CoinBank("ユミコ", 5000);

    System.out.println(coinbank1.getOwner() + "の貯金箱には、" + coinbank1.getBalance() +"円入っています");
    System.out.println(coinbank2.getOwner() + "の貯金箱には、" + coinbank2.getBalance() +"円入っています");
    System.out.println("--------------------------------------");

    System.out.println(coinbank1.getOwner() + "が500円貯金します" );
    coinbank1.save(500);
    System.out.println(coinbank1.getOwner() + "の貯金箱の中身は、" + coinbank1.getBalance() +"円になりました");

    System.out.println(coinbank2.getOwner() + "が200円貯金します" );
    coinbank2.save(200);
    System.out.println(coinbank2.getOwner() + "の貯金箱の中身は、" + coinbank2.getBalance() +"円になりました");
    System.out.println("--------------------------------------");
  }
}
