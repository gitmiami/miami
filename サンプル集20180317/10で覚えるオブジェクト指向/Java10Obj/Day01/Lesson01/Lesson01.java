class Computer {
  private int memory;

  Computer() {
    System.out.println("�V�����R���s���[�^�����܂���");
  }

  void setMemory(int memory) {
    this.memory = memory;
    System.out.println("��������" + this.memory + "MB�̂��܂���");
  }
}

class Test{
  public static void main(String args []) {
    Computer computer = new Computer();
    computer.setMemory(256);
  }
}