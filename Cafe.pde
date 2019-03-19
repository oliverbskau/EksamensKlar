class Cafe{
  
  
 void display(){
  
   if (skaermcafe==true){
     
     image(cafelukket,0,0);
  
     if (karakterX>1030 && karakterX<width && skaermcafe==true){
       image(cafeaaben,0,0);
     }
     
     // barista hovede
      pushMatrix();
   translate(293,419);
   rotate(radians(roterbarista));
   image(baristahoved,-44,-90);
   roterbarista=roterbarista-roterhovedeB;
   popMatrix();
   
   
   //mand hovede
   pushMatrix();
  translate(859,430);
  rotate(radians(rotermand));
   image(mandcafehoved,-36,-75);
   rotermand=rotermand-roterhovedeM;
   popMatrix();
   
   //mand arm
   
   
   
   
   if (roterbarista<-10){
    roterhovedeB=-0.5; 
   }
   if (roterbarista>10){
    roterhovedeB=0.5; 
   }
   
     if (rotermand<-5){
       roterhovedeM=-0.1;
     }
     
     if (rotermand>5){
      roterhovedeM=0.1; 
     }
     
     
     fill(0,0,0,indtoningcafe);
     rect(0,0,width,height);
     indtoningcafe = indtoningcafe - 5;
   }
   
   // her bliver menneskerne dynamiske
   
   
  
   
   
        
   
   
 }
  
  
  
}
