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
    System.out.println("�c�����Ɩ��J�n���܂�");
  }
  public void stopWorking() {
    System.out.println("�c�����Ɩ��I�����܂�");
  }
  public void doSecretaryJob() {
    System.out.println("�c�����鏑�̎d�������܂�");
  }
}


class Nakamura implements Programmer {
  public void startWorking() {
    System.out.println("�������Ɩ��J�n���܂�");
  }
  
  public void stopWorking() {
    System.out.println("�������Ɩ��I�����܂�");
  }
  
  public void doProgrammingJob() {
    System.out.println("�������v���O���������܂�");
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









