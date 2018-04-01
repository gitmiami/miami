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

    CoinBank coinbank1 = new CoinBank("マサヒロ", 1500);
    CoinBank coinbank2 = new CoinBank("マサヒロ", 1500);
    CoinBank coinbank3 = coinbank1;

    System.out.println("data1の中身は" + data1);	
    System.out.println("data2の中身は" + data2);
    System.out.println("----------------------------");

    System.out.println("coinbank1の持ち主は" + coinbank1.getOwner() + "、中には" + coinbank1.getBalance() + "円入っています");
    System.out.println("coinbank2の持ち主は" + coinbank2.getOwner() + "、中には" + coinbank2.getBalance() + "円入っています");
    System.out.println("coinbank3の持ち主は" + coinbank3.getOwner() + "、中には" + coinbank3.getBalance() + "円入っています");

    if (coinbank1 == coinbank2) {
      System.out.println("coinbank1とcoinbank2は同じ個体です");
    }else{
      System.out.println("coinbank1とcoinbank2は別の個体です");
    }
    if (coinbank1 == coinbank3) {
      System.out.println("coinbank1とcoinbank3は同じ個体です");
    }else{
      System.out.println("coinbank1とcoinbank3は別の個体です");
    }
    System.out.println("----------------------------");

    System.out.println("data2の値を変更します");
    data2 = 15;
    System.out.println("data1の中身は" + data1);
    System.out.println("data2の中身は" + data2);
    System.out.println("----------------------------");


    System.out.println("coinbank3の持ち主をマリコに変更して1000円追加で貯金します");
    coinbank3.setOwner("マリコ");
    coinbank3.save(1000);
    System.out.println("coinbank1の持ち主は" + coinbank1.getOwner() + "、中には" + coinbank1.getBalance() + "円入っています");
    System.out.println("coinbank2の持ち主は" + coinbank2.getOwner() + "、中には" + coinbank2.getBalance() + "円入っています");
    System.out.println("coinbank3の持ち主は" + coinbank3.getOwner() + "、中には" + coinbank3.getBalance() + "円入っています");
    System.out.println("----------------------------");	
  }
}
