package shape;

public class Rectangle {
  private int width;
  private int height;
  public Rectangle() { }
  public Rectangle(int width, int height) {
    this.width = width;
    this.height = height;
  }
  
  public int getArea(){
    return width * height;
  }
}


class Test{
  public static void main(String[] args) {
    Rectangle rc = new Rectangle(10, 15);
    System.out.println(rc.getArea());
  }
}

