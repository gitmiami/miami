class TooYoungException extends Exception {
  TooYoungException(String message) {
    super(message);
  }
}

class AdultMember{
  private String name;
  private int age;
  
  void setAge(int age) throws TooYoungException{
    if (age > 18) {
      this.age = age;
    } else {
      throw new TooYoungException("年齢が低すぎます:" + age);
    }
  }
  int getAge() {
    return this.age;
  }
}

class Test{
  public static void main(String args []) {
    AdultMember adm = new AdultMember();
    try {
      adm.setAge(Integer.parseInt(args[0]));
      System.out.println("年齢を設定しました");
    }catch(TooYoungException tme) {
      System.out.println(tme.getMessage());
    }
  }
}