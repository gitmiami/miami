class Rectangle {
  int width;
  int height;
  
  Rectangle(int width, int height) {
    this.width = width;
	this.height = height;
  }
  
  void setWidth(int width) {
    this.width = width;
  }
  
  int getArea() {
    return width * height;
  }
}

class Test {
  public static void main(String[] args) {
    Rectangle rect1 = new Rectangle(20, 15);
    Rectangle rect2 = new Rectangle(10, 25);
  
    System.out.println("rect1の面積は" + rect1.getArea() + "です");
    System.out.println("rect2の面積は" + rect2.getArea() + "です");

    rect1.setWidth(50);
    rect2.setWidth(40);
  
    System.out.println("rect1の面積は" + rect1.getArea() + "です");
    System.out.println("rect2の面積は" + rect2.getArea() + "です");
  }
}
