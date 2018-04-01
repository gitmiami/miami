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
    System.out.println("秘書が仕事の準備をしました");
  }
  public void start() {
    System.out.println("秘書が仕事を開始しました");
  }

  public void doJob() {
    System.out.println("秘書が仕事をしています");
  }

  public void finish() {
    System.out.println("秘書が仕事を終了しました");
  }
}



class Programmer extends AbstractWorker{
  public void prepare() {
    System.out.println("プログラマが仕事の準備をしました");
  }

  public void start() {
    System.out.println("プログラマが仕事を開始しました");
  }

  public void doJob() {
    System.out.println("プログラマが仕事をしています");
  }

  public void finish() {
    System.out.println("プログラマが仕事を終了しました");
  }
}


class Guard extends AbstractWorker{
  public void prepare() {
    System.out.println("警備員が仕事の準備をしました");
  }

  public void start() {
    System.out.println("警備員が仕事を開始しました");
  }

  public void doJob() {
    System.out.println("警備員が仕事をしています");
  }
  public void finish() {
    System.out.println("警備員が仕事を終了しました");
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








