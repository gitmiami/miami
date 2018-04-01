import java.awt.*;

class ColorPencil {
  Color color;
  ColorPencil(Color color) {
    this.color = color;
  }

  ColorPencil(int r, int g, int b) {
    this.color = new Color(r, g, b);
  }

  void draw() {
    System.out.println(this.color.toString() + "ÇÃêFÇ≈ï`âÊÇµÇ‹ÇµÇΩ");
  }
}