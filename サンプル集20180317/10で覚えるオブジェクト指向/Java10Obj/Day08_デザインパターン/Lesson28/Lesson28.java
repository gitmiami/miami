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
    System.out.println("Boss�̃C���X�^���X���擾����boss1�ɑ�����܂���");
    Boss boss2 = Boss.getBoss();
    System.out.println("Boss�̃C���X�^���X���擾����boss2�ɑ�����܂���");	
    System.out.println("Boss1��Boss2�͓����C���X�^���X�ł����H�F " + (boss1 == boss2));
  }
}
