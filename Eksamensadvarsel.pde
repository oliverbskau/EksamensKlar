class Eksamensadvarsel {

  void display() {

    if (dagsrytme==7 && handlingmin==2 && spilkarakterskaerm==true) {
      textSize(100);
      fill(255, 0, 0);
      text("Tag til eksamen på kortet ", 40, 400);
    }


    if (dagsrytme==7 && skaermkort==true && handlingmin==2) {

      if (mouseX<410 && mouseX>125 && mouseY>243 && mouseY<490) {
        image(mapcafe, 0, 0);
        textSize(100);
        fill(255, 0, 0);
        text("Tag til eksamen", 60, 400);
      }
      if (mouseX<880 && mouseX>555 && mouseY>70 && mouseY<256) {
        image(mapbib, 0, 0);
        textSize(100);
        fill(255, 0, 0);
        text("Tag til eksamen", 60, 400);
      }
      if (mouseX>1056 && mouseX<width && mouseY>0 && mouseY<168) {
        image(mapby, 0, 0);
        textSize(100);
        fill(255, 0, 0);
        text("Tag til eksamen", 60, 400);
      }
      if (mouseX>840 && mouseX<1205 && mouseY>318 && mouseY<669) {
        image(maphjem, 0, 0);
        textSize(100);
        fill(255, 0, 0);
        text("Tag til eksamen", 60, 400);
      }
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
