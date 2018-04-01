import java.io.*;

interface Outputable {
  void output();
}

abstract class Output implements Outputable{
  protected String string;
  void setString(String string){
    this.string = string;
  }
  public abstract void output();
}

class Monitor extends Output{
  public void output(){
    System.out.println("[ " + string + " ] �ƃ��j�^�ɏo�͂��܂���");
  }
}

class Printer extends Output {
  public void output() {
    System.out.println("[ " + string + " ] �ƃv�����^�ň�����܂���");
  }
}

class HardDisk extends Output {
  public void output(){
    System.out.println("[ " + string + " ] �ƃn�[�h�f�B�X�N�ɏ����o���܂���");
  }
}