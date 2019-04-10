class Eksamensadvarsel {

  void display() {

    if (dagsrytme==7) {
    }

    if (visMenuV==0 && spilkarakterskaerm==true) {
 
        textSize(20);
        fill(0);
        text("Dage til eksamen " + dagetileksamen, 1000, 75);

        if (dagsrytme==1) {
          dagetileksamen=6;
        }
        if (dagsrytme==2) {
          dagetileksamen=5;
        }
        if (dagsrytme==3) {
          dagetileksamen=4;
        }
        if (dagsrytme==4) {
          dagetileksamen=3;
        }
        if (dagsrytme==5) {
          dagetileksamen=2;
        }
        if (dagsrytme==6) {
          dagetileksamen=1;
        }
        if (dagsrytme==7) {
          dagetileksamen=0;
        }
      }
    }
  }
