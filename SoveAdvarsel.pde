class Soveadvarsel {


  void display() {


    if (handlingmin==2 && dagsrytme<7 && spilkarakterskaerm==true) {

      textSize(100);
      fill(255, 0, 0);
      text("DU HAR BRUG FOR SØVN ", 60, 400);
    }

    if (handlingmin>0 && mouseX>1056 && mouseX<width && mouseY>0 && mouseY<168 && skaermkort==true && dagsrytme<7) {
      textSize(40);
      fill(255, 0, 0);
      text("DU HAR IKKE NOK HANDLINGER TIL AT TAGE I BYEN ", 10, 400);
    }
  }
}
