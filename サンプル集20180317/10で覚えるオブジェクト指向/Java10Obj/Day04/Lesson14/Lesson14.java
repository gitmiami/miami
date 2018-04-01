class CoinBank {
  protected String owner;
  protected int balance;
  protected static int total;

  CoinBank(String owner, int balance) {
    this.owner = owner;
    this.balance = balance;
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
    if (amount > 0) {
      this.balance += amount;
      this.total += amount;
    }
  }
}



class SecuredCoinBank extends CoinBank {
  private String secretKey;

  SecuredCoinBank(String owner, int balance, String secretKey) {
    super(owner, balance);
    this.secretKey = secretKey;
  }

  void withdraw(int amount, String secretKey) 
      throws InvalidSecretKeyException, NoSufficientMoneyException{
    if (secretKey.equals(this.secretKey)) {
      if (this.balance >= amount) {
        this.balance -= amount;
      } else {
        throw new NoSufficientMoneyException();
      }
    } else {
      throw new InvalidSecretKeyException();
    }
  }
}

class InvalidSecretKeyException extends Exception {}
class NoSufficientMoneyException extends Exception {}


class Test{
  public static void main(String args []) {
    SecuredCoinBank scb = new SecuredCoinBank("コースケ", 5000, "secret");
    System.out.println(scb.getOwner() + "の貯金箱には" + scb.getBalance() + "円入っています");

    int amount = Integer.parseInt(args[0]);
    String key = args[1];
    
    try {
      scb.withdraw(amount, key);
      System.out.println(scb.getOwner() + "の貯金箱から"+ args[0] +"円引き出しました");
    } catch(InvalidSecretKeyException ex) {
      System.out.println("シークレットキーが違います。引き出せませんでした。");
      
    } catch(NoSufficientMoneyException ne) {
      System.out.println("お金が足りません。引き出せませんでした。");
    }

    System.out.println(scb.getOwner() +  "の貯金箱には" + scb.getBalance() + "円入っています");
    }
}

