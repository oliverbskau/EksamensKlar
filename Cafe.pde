class Cafe {


  void display() {

    if (skaermcafe==true) {

      image(cafelukket, 0, 0);

      if (karakterX>1030 && karakterX<width && skaermcafe==true) {
        image(cafeaaben, 0, 0);
      }

      if (cafesidder==true) {
        image(cafesiddende, 0, 0);

        pushMatrix();
        translate(560, 430);
        image(spillerhovede, -14, -67);
        popMatrix();


        pushMatrix();
        translate(611, 465);
        rotate(radians(roterspillerarm));
        image(spillerarm, -17, -43);
        popMatrix();

        roterspillerarm=roterspillerarm+rotererspillerarm;

        if (roterspillerarm>40) {
          rotererspillerarm=-1;
        }
        if (roterspillerarm<0) {
          rotererspillerarm=1;
        }
        
        if (frameCount%1000==0){
         cafesidder=false; 
         spilkarakterskaerm=true;
        }
        
      }

      // barista hovede
      pushMatrix();
      translate(293, 419);
      rotate(radians(roterbarista));
      image(baristahoved, -44, -90);
      roterbarista=roterbarista-roterhovedeB;
      popMatrix();


      //mand hovede
      pushMatrix();
      translate(859, 430);
      rotate(radians(rotermand));
      image(mandcafehoved, -36, -75);
      rotermand=rotermand-roterhovedeM;
      popMatrix();

      //mand arm
      pushMatrix();
      translate(908, 467);
      rotate(radians(roterunderarm));
      image(underarm, -18, -47);
      roterunderarm=roterunderarm-roterarm;
      popMatrix();

      // her bliver menneskerne dynamiske

      if (roterunderarm<368) {
        roterarm=-0.2;
      }
      if (roterunderarm>376) {
        roterarm=0.2;
      }


      if (roterbarista<-10) {
        roterhovedeB=-0.5;
      }
      if (roterbarista>10) {
        roterhovedeB=0.5;
      }

      if (rotermand<-5) {
        roterhovedeM=-0.1;
      }

      if (rotermand>5) {
        roterhovedeM=0.1;
      }


      fill(0, 0, 0, indtoningcafe);
      rect(0, 0, width, height);
      indtoningcafe = indtoningcafe - 5;
    }
  }
}
