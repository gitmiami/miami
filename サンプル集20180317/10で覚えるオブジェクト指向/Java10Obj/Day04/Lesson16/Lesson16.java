class Mail {
  protected String subject;
  protected String to;
  protected String from;
  protected String message;
  
  void setSubject(String subject) {
    this.subject = subject;
  }

  void setTo(String to) {
    this.to = to;
  }

  void setFrom(String from) {
    this.from = from;
  }

  void setMessage(String message) {
    this.message = message;
  }

  void send() {
    System.out.println("メッセージを送信しました");
    System.out.println("-------------------------");
    System.out.println("件名： " + this.subject);
    System.out.println("宛先： " + this.to);
    System.out.println("送信者： " + this.from);
    System.out.println("内容： " + this.message);
    System.out.println("-------------------------");
  }
}


class Mailer {
  protected Mail mail;

  void createNewMail(){
    this.mail = new Mail();
  }
  
  void setSubject(String subject) {
    mail.setSubject(subject);
  }

  void setTo(String to) {
    mail.setTo(to);
  }

  void setFrom(String from) {
    mail.setFrom(from);
  }

  void setMessage(String message) {
    mail.setMessage(message);
  }

  void send() {
    mail.send();
  }
}



class Test {
  public static void main(String[] args) {
    Mailer mailer = new Mailer();
	
	mailer.createNewMail();

	mailer.setSubject(args[0]);
	mailer.setTo(args[1]);
	mailer.setFrom(args[2]);
	mailer.setMessage(args[3]);

	mailer.send();
  
  }
}




