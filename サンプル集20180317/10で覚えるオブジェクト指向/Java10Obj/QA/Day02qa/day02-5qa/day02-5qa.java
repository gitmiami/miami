import java.awt.*;
class ArrayTest {
  public static void main(String[] args) {
    Point[] pOriginal = {new Point(0, 0), new Point(5, 5), new Point(10, 10)};
    Point[] pShallow, pDeep;
    pShallow = (Point[])pOriginal.clone();
    pDeep = new Point[pOriginal.length];
    for (int i=0; i <pOriginal.length; i++) {
      pDeep[i] = (Point)pOriginal[i].clone();
    }
    pOriginal[0].x = 100;
    System.out.println(pShallow[0].x);
    System.out.println(pDeep[0].x);
  }
}