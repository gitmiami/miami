class Book {
  String title;
  
  Book(String title) {
    this.title = title;
  }
  
  void setTitle(String title) {
    this.title = title;
  }
  
  String getTitle() {
    return this.title;
  }
}

class Test {
  public static void main(String[] args) {
    Book book1 = new Book("�E�҂̑��蕨");
    Book book2 = new Book("��y�̓^�R�ł���");
    Book book3 = book1;
    
    System.out.println(book1.getTitle());
    System.out.println(book2.getTitle());
    System.out.println(book3.getTitle());
    
    book3.setTitle("�l�ԍ��o");

    System.out.println(book1.getTitle());
    System.out.println(book2.getTitle());
    System.out.println(book3.getTitle());
  }
}
