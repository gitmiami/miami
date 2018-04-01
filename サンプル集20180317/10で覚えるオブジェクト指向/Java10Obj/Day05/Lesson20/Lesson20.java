interface employee {
  void startWorking();
  void stopWorking();
}


interface Secretary extends employee {
  void doSecretaryJob();
}


interface Programmer extends employee {
  void doProgrammingJob();
}


class Tanaka implements Secretary {
  public void startWorking() {
    System.out.println("田中が業務開始します");
  }
  public void stopWorking() {
    System.out.println("田中が業務終了します");
  }
  public void doSecretaryJob() {
    System.out.println("田中が秘書の仕事をします");
  }
}


class Nakamura implements Programmer {
  public void startWorking() {
    System.out.println("中村が業務開始します");
  }
  
  public void stopWorking() {
    System.out.println("中村が業務終了します");
  }
  
  public void doProgrammingJob() {
    System.out.println("中村がプログラムを作ります");
  }
}


class Test {
  public static void main(String[] args) {
    employee[] employee = {new Tanaka(), new Nakamura() };

    for (int i = 0; i < employee.length; i++) {
      employee[i].startWorking();
      if (employee[i] instanceof Secretary) {
        ((Secretary)employee[i]).doSecretaryJob();
      }else if (employee[i] instanceof Programmer) {
        ((Programmer)employee[i]).doProgrammingJob();
      }
      employee[i].stopWorking();
    }
  }
}









