class Test{
  public static void main(String args []) {
    System.out.println("�d�����n�߂܂�");
    System.out.println("3�b�x�݂܂�");
    try {
      Thread.sleep(3000);
    }catch (InterruptedException ie) {
      ie.printStackTrace();
    }
    System.out.println("�d�����I���܂�");
  }
}
