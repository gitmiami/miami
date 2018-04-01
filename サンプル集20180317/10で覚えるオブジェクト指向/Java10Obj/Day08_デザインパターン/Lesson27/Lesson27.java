abstract class AbstractWorker {
  public abstract void prepare();
  public abstract void start();
  public abstract void doJob();
  public abstract void finish();

  void work() {
    prepare();
    start();
    for(int i=0; i<3; i++){
      doJob();
    }
    finish();
  }
}



class Secretary extends AbstractWorker{
  public void prepare() {
    System.out.println("�鏑���d���̏��������܂���");
  }
  public void start() {
    System.out.println("�鏑���d�����J�n���܂���");
  }

  public void doJob() {
    System.out.println("�鏑���d�������Ă��܂�");
  }

  public void finish() {
    System.out.println("�鏑���d�����I�����܂���");
  }
}



class Programmer extends AbstractWorker{
  public void prepare() {
    System.out.println("�v���O���}���d���̏��������܂���");
  }

  public void start() {
    System.out.println("�v���O���}���d�����J�n���܂���");
  }

  public void doJob() {
    System.out.println("�v���O���}���d�������Ă��܂�");
  }

  public void finish() {
    System.out.println("�v���O���}���d�����I�����܂���");
  }
}


class Guard extends AbstractWorker{
  public void prepare() {
    System.out.println("�x�������d���̏��������܂���");
  }

  public void start() {
    System.out.println("�x�������d�����J�n���܂���");
  }

  public void doJob() {
    System.out.println("�x�������d�������Ă��܂�");
  }
  public void finish() {
    System.out.println("�x�������d�����I�����܂���");
  }
}

class Test {
  public static void main(String[] args) {
    AbstractWorker[] worker = {new Secretary(), new Programmer(), new Guard()};
    for (int i=0; i<worker.length; i++) {
      worker[i].work();
      System.out.println("-------------------------");
    }
  }
}








