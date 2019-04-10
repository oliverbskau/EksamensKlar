class Kort {

  void display() {

    if (skaermkort==true) {

      image(map, 0, 0);
      
      if (mouseX<410 && mouseX>125 && mouseY>243 && mouseY<490 && dagsrytme<=6) {
        image(mapcafe, 0, 0);
      }
      if (mouseX<880 && mouseX>555 && mouseY>70 && mouseY<256 && dagsrytme<=6) {
        image(mapbib, 0, 0);
      }
      if (mouseX>1056 && mouseX<width && mouseY>0 && mouseY<168 && dagsrytme<=6) {
        image(mapby, 0, 0);
      }
      if (mouseX>840 && mouseX<1205 && mouseY>318 && mouseY<669 && dagsrytme<=6) {
        image(maphjem, 0, 0);
      }
      
       if (dagsrytme==7 && handlingmin==2){
        image(skole,0,0);
      }
      
      if (mouseX>412 && mouseX<570 && mouseY>80 && mouseY<340 && dagsrytme==7 && handlingmin==2){
          image(eksamen,0,0);
      }
      
      }
      
     
  
      
      
      
      

      fill(0, 0, 0, indtoning);
      rect(0, 0, width, height);
    }
  }
