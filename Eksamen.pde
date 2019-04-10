class Eksamenstart {


  void display() {

    if (skaermeksamen==true) {

      image(eksamenstest, 0, 0);

      if (mouseX<1047 && mouseX>820 && mouseY>135 && mouseY<530 && visnotater==false) {
        image(noteraaben, 787, 0);
      }
      
      
      
      
      
      
    }
    fill(0, 0, 0, indtoning);
    rect(0, 0, width, height);
  }
}
