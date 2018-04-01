class TooYoungException extends Exception {
  TooYoungException(String message) {
    super(message);
  }
}

class TooManyCharsException extends Exception {
  TooManyCharsException(String message) {
    super(message);
  }
}

class AdultMember{
  private String name;
  private int age;
  
  void setAge(int age) throws TooYoungException{
    if (age > 18) {
      this.age = age;
    } else {
      throw new TooYoungException("”N—î‚ª’á‚·‚¬‚Ü‚·:" + age);
    }
  }
  
  int getAge() {
    return this.age;
  }
  
  void setName(String name) throws TooManyCharsException{
    if (name.length() > 15) {
      throw new TooManyCharsException("–¼‘O‚Ì•¶š”‚ª‘½‚·‚¬‚Ü‚·");
    }
  }
}