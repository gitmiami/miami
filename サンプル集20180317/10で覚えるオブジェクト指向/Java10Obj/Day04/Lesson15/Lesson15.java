import java.io.*;

class Output {
  protected String string;

  void setString(String string){
    this.string = string;
  }
  void output(){
    System.out.println("[ " + string + " ] �Əo�͂��܂���");
  }
}


class Monitor extends Output{
  void output(){
    System.out.println("[ " + string + " ] �ƃ��j�^�ɏo�͂��܂���");
  }
}


class Printer extends Output {
  void output() {
    System.out.println("[ " + string + " ] �ƃv�����^�ň�����܂���");
  }
}


class HardDisk extends Output {
  void output(){
    System.out.println("[ " + string + " ] �ƃn�[�h�f�B�X�N�ɏ����o���܂���");
  }
}

class Test {
  public static void main(String[] args) {
    Output[] output = {new Monitor(), new Printer(), new HardDisk() };

    while(true) {
      try {
        System.out.println("��������I�����Ă���������");
        System.out.println("0�F��ʂɏo�́@1�F�v�����^�ɏo�́@2�F�t�@�C���ɏo�́@3�F�I��");
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int num = Integer.parseInt(br.readLine());
        if (num >= 3) System.exit(0);

        System.out.println("���o�͂��镶������w�肵�Ă���������");
        br = new BufferedReader(new InputStreamReader(System.in));

        output[num].setString(br.readLine());

        System.out.println("-------------------------------------------");
        output[num].output();
        System.out.println("-------------------------------------------\n");

      }catch(IOException ie) {
        ie.printStackTrace();
      }
    }
  }
}



