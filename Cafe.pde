class Cafe{
  
  
 void display(){
  
   if (skaermcafe==true){
     
     image(cafelukket,0,0);
  
     if (karakterX>1030 && karakterX<width && skaermcafe==true){
       image(cafeaaben,0,0);
     }
     
     fill(0,0,0,indtoningcafe);
     rect(0,0,width,height);
     indtoningcafe = indtoningcafe - 5;
   }
   
   // her bliver menneskerne dynamiske
   
 }
  
  
  
}
