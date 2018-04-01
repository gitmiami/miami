class Test{
  public static void main(String args []) {
    System.out.println("仕事を始めます");
    System.out.println("3秒休みます");
    try {
      Thread.sleep(3000);
    }catch (InterruptedException ie) {
      ie.printStackTrace();
    }
    System.out.println("仕事を終わります");
  }
}
