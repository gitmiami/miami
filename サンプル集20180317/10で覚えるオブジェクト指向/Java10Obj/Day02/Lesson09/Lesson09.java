class Test{
  public static void main(String args []) {
    String str1 = new String("Hello");
    String str2 = "Hello";
    System.out.println("str1�̒��g��" + str1);
    System.out.println("str2�̒��g��" + str2);

    System.out.println("str1��str2�͓����C���X�^���X�H�F" + (str1 == str2));
    System.out.println("str1��str2�͓���������H�F" + (str1.equals(str2)));
    System.out.println("-------------------------");

    System.out.println("str2��str1�������܂�");
    str2 = str1;
    System.out.println("str1��str2�͓����C���X�^���X�H�F" + (str1 == str2));
    System.out.println("-------------------------");
    System.out.println("str2�̒��g���uGood Bye !�v�ɕύX���܂�");
    str2 = "Good bye !";
    System.out.println("str1�̒��g��" + str1);
    System.out.println("str2�̒��g��" + str2);
    System.out.println("str1��str2�͓����C���X�^���X�H�F" + (str1 == str2));
  }
}

