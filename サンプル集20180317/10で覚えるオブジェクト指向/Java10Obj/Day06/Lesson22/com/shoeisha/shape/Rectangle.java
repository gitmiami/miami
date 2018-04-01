package com.shoeisha.shape;

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
