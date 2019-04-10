class Eksamenstart {


  void display() {

    if (skaermeksamen==true) {

      image(eksamenstest, 0, 0);

      if (mouseX<1047 && mouseX>820 && mouseY>135 && mouseY<530 && visnotater==false) {
        image(noteraaben, 787, 0);

        pushMatrix();
        translate(920, 205);

        if (statsklog>=1) {
          textSize(20);
          fill(0);
          text("1. Muscat", 0, 0);
          text("2. Sikhisme", 0, 30);
        }
        if (statsklog>=2) {
          textSize(20);
          fill(0);
          text("3. Herbert Hoover", 0, 60);
          text("4. Thulium(Tm)", 0, 90);
        }
        if (statsklog>=3) {
          textSize(20);
          fill(0);
          text("5. 4,5 mia.km.", 0, 120);
          text("6. Christian 3.", 0, 150);
        }
        if (statsklog>=4) {
          textSize(20);
          fill(0);
          text("7. Kniv", 0, 180);
          text("8. 29 år", 0, 210);
        }
        if (statsklog>=5) {
          textSize(20);
          fill(0);
          text("9. Badminton", 0, 240);
          text("10. 2", 0, 270);
        }
        popMatrix();
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
      }
    }
    fill(0, 0, 0, indtoning);
    rect(0, 0, width, height);
  }
}
