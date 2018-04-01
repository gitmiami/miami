interface Animal {
  void eat();
}

interface Dog extends Animal{
  void run();
}

interface Bird extends Animal{
  void fly();
}

class Shephard implements Dog {
  public void eat(){
    System.out.println("�����G�T�����ׂ܂�");
  }
  public void run(){
    System.out.println("��������܂�");
  }
}

class Swan implements Bird {
  public void eat(){
    System.out.println("�������G�T�����ׂ܂�");
  }
  public void fly(){
    System.out.println("��������т܂�");
  }
}

class Test {
  public static void main(String[] args) {
    Animal[] animal = {new Shephard(), new Swan()};
    for (int i=0; i < animal.length; i++){
      animal[i].eat();
      if (animal[i] instanceof Dog) {
        ((Dog)animal[i]).run();
      }else{
        ((Bird)animal[i]).fly();
      }
    }
  }
}