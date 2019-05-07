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

      if (skaermeksamen==true && statssove==2) {
        eksamensover = eksamensover+0.5;
      }


      if (svar1==true) {
        fill(0);
        ellipse(svarX, svarY, 5, 5);
      }
      if (svar2==true) {
        fill(0);
        ellipse(svarX2, svarY2, 5, 5);
      }
      if (svar3==true) {
        fill(0);
        ellipse(svarX3, svarY3, 5, 5);
      }
      if (svar4==true) {
        fill(0);
        ellipse(svarX4, svarY4, 5, 5);
      }
      if (svar5==true) {
        fill(0);
        ellipse(svarX5, svarY5, 5, 5);
      }
      if (svar6==true) {
        fill(0);
        ellipse(svarX6, svarY6, 5, 5);
      }
      if (svar7==true) {
        fill(0);
        ellipse(svarX7, svarY7, 5, 5);
      }
      if (svar8==true) {
        fill(0);
        ellipse(svarX8, svarY8, 5, 5);
      }
      if (svar9==true) {
        fill(0);
        ellipse(svarX9, svarY9, 5, 5);
      }
      if (svar10==true) {
        fill(0);
        ellipse(svarX10, svarY10, 5, 5);
      }





      korrektesvar= korrekt + korrekt2 + korrekt3 + korrekt4 + korrekt5 + korrekt6 + korrekt7 + korrekt8 + korrekt9 + korrekt10;

      forkertesvar= forkert + forkert2 + forkert3 + forkert4 + forkert5 + forkert6 + forkert7 + forkert8 + forkert9 + forkert10;


      if (svar1==true && svar2==true && svar3==true && svar4==true && svar5==true && svar6==true && svar7==true && svar8==true && svar9==true && svar10==true) {
        image(aflever, 840, 565);
      }

      image(blyant, mouseX-5, mouseY-20);
    }

    if (afleveret==true) {
      fill(0);
      rect(0, 0, width, height); 

      if (korrektesvar>=7) {
        textSize(100);
        fill(0, 255, 0);
        text("BESTÅET!", 400, 150);
        textSize(50);
        fill(0, 255, 0);
        text("Korrekte svar: " + korrektesvar, 400, height/2);
        fill(255, 0, 0);
        text("forkerte svar: " + forkertesvar, 400, height/2 + 50);
        fill(255);
        text("Du skal have mindst 7 rigtige", 400, height/2+100);
        image(MenuKnap,784,506);
      }
      if (korrektesvar<=6) {
        textSize(100);
        fill(255, 0, 0);
        text("DUMPET!", 400, 150);
        textSize(50);
        fill(0, 255, 0);
        text("Korrekte svar: " + korrektesvar, 400, height/2);
        fill(255, 0, 0);
        text("forkerte svar: " + forkertesvar, 400, height/2 + 50);
        fill(255);
        text("Du skal have mindst 7 rigtige", 400, height/2+100);
        image(MenuKnap,784,506);
      }
    }

  

    fill(0, 0, 0, eksamensover);
    rect(0, 0, width, height);
    
      if (eksamensover>255) {
      skaermeksamen=false;
      faldtisovn=true;
      
      if (faldtisovn==true){
      image(sove,0,0);
      }
      image(MenuKnap,784,506);
    }
    
    if (fortraet==true){
     image(traet,0,0); 
     image(MenuKnap,784,506);
    }
    
    if (fortrist==true){
      image(trist,0,0);
      image(MenuKnap,784,506);
    }

    fill(0, 0, 0, indtoning);
    rect(0, 0, width, height);
  }
}
