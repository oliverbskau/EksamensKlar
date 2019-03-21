class Bibliotek{
  
 void display(){
  
   if (skaermbibliotek==true){
     
    image(biblioteklukket,0,0);
    
    if (karakterX>1013 && karakterX<width && skaermbibliotek==true){
       image(bibliotekaaben,0,0);
     }
     
     
     if (karakterX<210 && skaermbibliotek==true && key==' '){
       
      laeser = true;
       
     }
   
   //læs
   
     if (laeser==true){
       image(biblioteklaeser,0,0);
     }
     
     //stop med at læse
     
     if (laeser==true && key=='d'){
      laeser=false;
     }
     
        fill(0,0,0,indtoningbibliotek);
     rect(0,0,width,height);
     indtoningbibliotek = indtoningbibliotek - 5;
     
   }
   
   
 }
  
  
  
}
