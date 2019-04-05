class Byen {

  void display() {

    if (skaermbyen==true) {
      image(bar, 0, 0); 
      karakterY=390; 

      image(oliverhovede, 796, 337);
      image(bartenderhovede, 658, dans);
      image(skydedor,dor,305);

      dans=dans+movedans;

      if (dans<325) {
        movedans=1;
      }
      if (dans>335) {
        movedans=-1;
      }
      
      
      
        if (karakterX<width && karakterX>975 && skaermbyen==true){
          doraabner=true;
          dorlukker=false;
        }
        if (karakterX<975 && skaermbyen==true){
         dorlukker=true; 
         doraabner=false;
        }
      
        dor=dor+bevaegdor;
        
        if (dorlukker==true && skaermbyen==true){
         bevaegdor=-2; 
        }
      if (doraabner==true && skaermbyen==true){
         bevaegdor=2; 
        }
       if (dor>1200){
        dor=1199;
        bevaegdor=0;
       }
       if (dor<1017){
        dor=1018;
        bevaegdor=0;
       }

        if (frameCount%15==0) {

        red = random(1, 255);
        green = random(1, 255);
        blue = random(1, 255);
      }

      fill(red, green, blue, 50);
      rect(0, 0, width, height);

      fill(0, 0, 0, indtoning);
      rect(0, 0, width, height);
    }
    if (skaermbyen==false) {
      karakterY=380;
    }
  }
}
