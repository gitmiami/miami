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
    Book book1 = new Book("忍者の贈り物");
    Book book2 = new Book("我輩はタコである");
    Book book3 = book1;
    
    System.out.println(book1.getTitle());
    System.out.println(book2.getTitle());
    System.out.println(book3.getTitle());
    
    book3.setTitle("人間錯覚");

    System.out.println(book1.getTitle());
    System.out.println(book2.getTitle());
    System.out.println(book3.getTitle());
  }
}
