class Tekstvalg {

  void display() {

    if (skaermvaerelse==true && karakterX<1060 && karakterX>975) {
      textSize(30);
      fill(0);
      text("GÅ UD", 1020, 270);
    }
    if (skaermvaerelse==true && karakterX > 45 && karakterX < 400 && sover==false  ) {
      textSize(30);
      fill(0);
      text("GÅ I SENG", 144, 450);
    }
    if (skaermvaerelse==true && karakterX>575 && karakterX< 640 && spiller==false ) {
      textSize(30);
      fill(0);
      text("SPIL COMPUTER", 575, 300);
    }


    if (skaermcafe==true && karakterX>475 && karakterX<515 && cafesidder==false) {
      textSize(30);
      fill(0);
      text("DRIK KAFFE", 455, 340);
    }
    if (skaermcafe==true && karakterX>1030 && karakterX<width) {
      textSize(30);
      fill(0);
      text("GÅ UD", 1090, 270);
    }



    if (skaermbibliotek==true && karakterX<210 && laeser==false) {
      textSize(30);
      fill(0);
      text("LÆS EN BOG", 100, 340);
    }
    if (skaermbibliotek==true && karakterX>1030 && karakterX<width) {
      textSize(30);
      fill(0);
      text("GÅ UD", 1070, 280);
    }

    if (skaermbyen==true && karakterX>305 && karakterX<355 && drikkerdrinks==false) {
      textSize(30);
      fill(0);
      text("DRIK EN DRINK", 305, 340);
    }
    if (karakterX<width && karakterX>975 && skaermbyen==true) {
      textSize(30);
      fill(0);
      text("TAG HJEM", 1025, 270);
    }
  }
}
