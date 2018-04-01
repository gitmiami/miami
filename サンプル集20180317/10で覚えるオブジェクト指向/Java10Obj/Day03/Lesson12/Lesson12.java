import java.net.*;

class Website{
  private String title;
  private URL url;

  public void setURL(String url) 
       throws MalformedURLException{
    this.url = new URL(url);
  }
  public URL getURL() {
    return this.url;
  }
}

class Test{
  public static void main(String args []) {
    Website site = new Website();
    try {
      site.setURL(args[0]);
      System.out.println("Ç±ÇÃWebÉTÉCÉgÇÃURLÇ " + site.getURL().toString() + " Ç…ÇµÇ‹ÇµÇΩ");
    }catch (MalformedURLException me) {
      me.printStackTrace();
      System.out.println("URLÇÕê›íËÇ≥ÇÍÇƒÇ¢Ç‹ÇπÇÒ");
    }
  }
}