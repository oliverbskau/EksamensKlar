class Statistik {



  void display() {

    if (statistikker==true) {
      fill(255);
      rect(0, 0, 400, 150);


      // søvn 

      fill(ss1, 0, 0);
      rect(155, 5, 40, 40);

      fill(ss2, 0, 0);
      rect(200, 5, 40, 40);

      fill(ss3, 0, 0);
      rect(245, 5, 40, 40);

      fill(ss4, 0, 0);
      rect(290, 5, 40, 40);

      fill(ss5, 0, 0);
      rect(335, 5, 40, 40);

      textSize(30);
      text("Søvn", 5, 35);

      //glæde

      fill(sg1, 0, 0);
      rect(155, 55, 40, 40);

      fill(sg2, 0, 0);
      rect(200, 55, 40, 40);

      fill(sg3, 0, 0);
      rect(245, 55, 40, 40);

      fill(sg4, 0, 0);
      rect(290, 55, 40, 40);

      fill(sg5, 0, 0);
      rect(335, 55, 40, 40);

      textSize(30);
      text("Glæde", 5, 85);

      // intellekt

      fill(sk1, 0, 0);
      rect(155, 105, 40, 40);

      fill(sk2, 0, 0);
      rect(200, 105, 40, 40);

      fill(sk3, 0, 0);
      rect(245, 105, 40, 40);

      fill(sk4, 0, 0);
      rect(290, 105, 40, 40);

      fill(sk5, 0, 0);
      rect(335, 105, 40, 40);

      textSize(30);
      text("Intellekt", 5, 135);


      // statistikkerne skifter farve
      if (statssove==1) {
        ss1=255;
        ss2=0;
        ss3=0;
        ss4=0;
        ss5=0;
      }
      if (statssove==2) {
        ss1=255;
        ss2=255;
        ss3=0;
        ss4=0;
        ss5=0;
      }
      if (statssove==3) {
        ss1=255;
        ss2=255;
        ss3=255;
        ss4=0;
        ss5=0;
      }
      if (statssove==4) {
        ss1=255;
        ss2=255;
        ss3=255;
        ss4=255;
        ss5=0;
      }
      if (statssove==5) {
        ss1=255;
        ss2=255;
        ss3=255;
        ss4=255;
        ss5=255;
      }

      if (statsklog==1) {
        sk1=255;
        sk2=0;
        sk3=0;
        sk4=0;
        sk5=0;
      }
      if (statsklog==2) {
        sk1=255;
        sk2=255;
        sk3=0;
        sk4=0;
        sk5=0;
      }
      if (statsklog==3) {
        sk1=255;
        sk2=255;
        sk3=255;
        sk4=0;
        sk5=0;
      }
      if (statsklog==4) {
        sk1=255;
        sk2=255;
        sk3=255;
        sk4=255;
        sk5=0;
      }
      if (statsklog==5) {
        sk1=255;
        sk2=255;
        sk3=255;
        sk4=255;
        sk5=255;
      }

      if (statssocial==1) {
        sg1=255;
        sg2=0;
        sg3=0;
        sg4=0;
        sg5=0;
      }
      if (statssocial==2) {
        sg1=255;
        sg2=255;
        sg3=0;
        sg4=0;
        sg5=0;
      }
      if (statssocial==3) {
        sg1=255;
        sg2=255;
        sg3=255;
        sg4=0;
        sg5=0;
      }
      if (statssocial==4) {
        sg1=255;
        sg2=255;
        sg3=255;
        sg4=255;
        sg5=0;
      }
      if (statssocial==5) {
        sg1=255;
        sg2=255;
        sg3=255;
        sg4=255;
        sg5=255;
      }
      
      
      if (statssocial>5){
       statssocial=5; 
      }
       if (statssocial<1){
       statssocial=1; 
      }
      
       if (statsklog>5){
       statsklog=5; 
      }
       if (statsklog<1){
       statsklog=1; 
      }
      
       if (statssove>5){
       statssove=5; 
      }
       if (statssove<1){
       statssove=1; 
      }
      
      
      
      
    }
  }
}
