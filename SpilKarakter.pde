class SpilKarakter {





  void display() {



    if (spilkarakterskaerm==true) {

      if (hojre==true && sover==false) {
        image(kropudenben, karakterX, karakterY);
        pushMatrix();
        translate(karakterX+64, karakterY+165);
        rotate(radians(-roterben));
        image(benhojre, 0, 0);
        popMatrix();
        pushMatrix();
        translate(karakterX+39, karakterY+165);
        rotate(radians(roterben));
        image(benhojre, 0, 0);
        popMatrix();
        karakterX = karakterX + modhojre;

        if (roterer==true) {
          roterben=roterben+roter;
          roter=roterende;
        }
        if (roterben>8) {
          roterende=-1;
        }
        if (roterben<0) {
          roterende=1;
        }
      }

      if (venstre==true && sover==false) {
        image(kropvenstre, karakterX, karakterY);
        pushMatrix();
        translate(karakterX+15, karakterY+165);
        rotate(radians(roterben));
        image(benvenstre, 0, 0);
        popMatrix();
        pushMatrix();
        translate(karakterX+39, karakterY+165);
        rotate(radians(-roterben));
        image(benvenstre, 0, 0);
        popMatrix();
        karakterX = karakterX - modvenstre;
        if (roterer==true) {
          roterben=roterben+roter;
          roter=roterende;
        }
        if (roterben>8) {
          roterende=-1;
        }
        if (roterben<0) {
          roterende=1;
        }
      }


      if (karakterX>1180) {
        modhojre=0;
        karakterX=1179;
      }
      if (karakterX<-20) {
        modvenstre=0;
        karakterX=-19;
      }

      if (skaermvaerelse==true){
      fill(0, 0, 0, indtoningvaerelse);
      rect(0, 0, width, height);

      indtoningvaerelse=indtoningvaerelse-5;
      }
    }
    
    if (sover==true){
        fill(0,0,0,udtoningsover);
       rect(0,0,width,height); 
       udtoningsover=udtoningsover+1;
    }
    
       if (udtoningsover>255){
        sover=false;
       }
       if (sover==false && udtoningsover>1){
         fill(0,0,0,udtoningsover);
       rect(0,0,width,height);
       udtoningsover=udtoningsover-1;
       }
      
       
      }
    
  }
