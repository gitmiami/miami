class Test{
  public static void main(String args []) {
    System.out.println("int�^�̔z����쐬���ď��������܂�");
    int[] array1 = {0};
    int[] array2 = {100};
    System.out.println("array1[0] = " + array1[0]);
    System.out.println("array2[0] = " + array2[0]);
    System.out.println("array1��array2�͓����I�u�W�F�N�g�H�F " + (array1 == array2));
    System.out.println("-----------------------");

    System.out.println("array2��array1���R�s�[���Aarray2�̍ŏ��̗v�f��12345�ɕύX���܂�");
    System.arraycopy(array1, 0, array2, 0, 1);
    array2[0] = 12345;
    System.out.println("array1[0] = " + array1[0]);
    System.out.println("array2[0] = " + array2[0]);
    System.out.println("array1��array2�͓����I�u�W�F�N�g�H�F " + (array1 == array2));
    System.out.println("-----------------------");	

    System.out.println("array2��array1�������Aarray2�̍ŏ��̗v�f��999�ɕύX���܂�");
    array2 = array1;
    array2[0] = 999;
    System.out.println("array1[0] = " + array1[0]);
    System.out.println("array2[0] = " + array2[0]);
    System.out.println("array1��array2�͓����I�u�W�F�N�g�H�F " + (array1 == array2));
  }
}
