class Boss {
  static Boss boss = new Boss();
  private Boss() {}
  public static Boss getBoss() {
    return boss;
  }
}



class Test {
  public static void main(String[] args) {
    Boss boss1 = Boss.getBoss();
    System.out.println("Bossのインスタンスを取得してboss1に代入しました");
    Boss boss2 = Boss.getBoss();
    System.out.println("Bossのインスタンスを取得してboss2に代入しました");	
    System.out.println("Boss1とBoss2は同じインスタンスですか？： " + (boss1 == boss2));
  }
}
