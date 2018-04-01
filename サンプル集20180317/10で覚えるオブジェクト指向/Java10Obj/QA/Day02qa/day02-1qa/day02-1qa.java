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
  
    System.out.println("rect1‚Ì–ÊÏ‚Í" + rect1.getArea() + "‚Å‚·");
    System.out.println("rect2‚Ì–ÊÏ‚Í" + rect2.getArea() + "‚Å‚·");

    rect1.setWidth(50);
    rect2.setWidth(40);
  
    System.out.println("rect1‚Ì–ÊÏ‚Í" + rect1.getArea() + "‚Å‚·");
    System.out.println("rect2‚Ì–ÊÏ‚Í" + rect2.getArea() + "‚Å‚·");
  }
}
