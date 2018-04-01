//下記ソースコードは変更部分周辺のみの抜粋です。。
//このクラスはそのままコンパイルできません。
class CoinBank {
  ……前略……
  static int number;
  ……中略……

  CoinBank(String owner, int balance) {
    this.owner = owner;
    if (balance >= 0) {
      this.balance = balance;
    }
    number++;
  }

……後略……
}
