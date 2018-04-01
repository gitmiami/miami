class Computer {
  private int memory;

  Computer() {
    System.out.println("新しいコンピュータを作りました");
  }

  void setMemory(int memory) {
    this.memory = memory;
    System.out.println("メモリを" + this.memory + "MBのせました");
  }
}

class Test{
  public static void main(String args []) {
    Computer computer = new Computer();
    computer.setMemory(256);
  }
}