class LimitOverException extends Exception {}

final class LimitCoinBank extends CoinBank {
  private int limit;
  
  LimitCoinBank(String owner, int balance, int limit) throws LimitOverException{
    super(owner, balance);
    if (limit > balance) {
      this.limit = limit;
    }else {
      throw new LimitOverException();
    }
  }

  void setLimit(int limit) {
    this.limit = limit;
  }
  
  int getLimit(){
    return limit;
  }
  void save(int amount){
    if (amount > 0) {
      if (this.balance + amount < this.limit) {
        this.balance += amount;
        this.total += amount;
      }
    }
  }
}



