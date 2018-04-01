class President {
  static President president = new President();
  
  private President() {}
  
  public static President getPresident() {
    return president;
  }
}