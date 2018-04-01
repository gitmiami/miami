class Test{
  public static void main(String args []) {
    System.out.println("int型の配列を作成して初期化します");
    int[] array1 = {0};
    int[] array2 = {100};
    System.out.println("array1[0] = " + array1[0]);
    System.out.println("array2[0] = " + array2[0]);
    System.out.println("array1とarray2は同じオブジェクト？： " + (array1 == array2));
    System.out.println("-----------------------");

    System.out.println("array2にarray1をコピーし、array2の最初の要素を12345に変更します");
    System.arraycopy(array1, 0, array2, 0, 1);
    array2[0] = 12345;
    System.out.println("array1[0] = " + array1[0]);
    System.out.println("array2[0] = " + array2[0]);
    System.out.println("array1とarray2は同じオブジェクト？： " + (array1 == array2));
    System.out.println("-----------------------");	

    System.out.println("array2にarray1を代入し、array2の最初の要素を999に変更します");
    array2 = array1;
    array2[0] = 999;
    System.out.println("array1[0] = " + array1[0]);
    System.out.println("array2[0] = " + array2[0]);
    System.out.println("array1とarray2は同じオブジェクト？： " + (array1 == array2));
  }
}
