class Test{
  public static void main(String args []) {
    String str1 = new String("Hello");
    String str2 = "Hello";
    System.out.println("str1の中身は" + str1);
    System.out.println("str2の中身は" + str2);

    System.out.println("str1とstr2は同じインスタンス？：" + (str1 == str2));
    System.out.println("str1とstr2は同じ文字列？：" + (str1.equals(str2)));
    System.out.println("-------------------------");

    System.out.println("str2にstr1を代入します");
    str2 = str1;
    System.out.println("str1とstr2は同じインスタンス？：" + (str1 == str2));
    System.out.println("-------------------------");
    System.out.println("str2の中身を「Good Bye !」に変更します");
    str2 = "Good bye !";
    System.out.println("str1の中身は" + str1);
    System.out.println("str2の中身は" + str2);
    System.out.println("str1とstr2は同じインスタンス？：" + (str1 == str2));
  }
}

