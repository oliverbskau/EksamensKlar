class Byen{
 
  void display(){
    
    if (skaermbyen==true){
     image(bar,0,0); 
      karakterY=390; 
      
      image(oliverhovede,796,337);
      
      image(bartenderhovede,658,dans);

      dans=dans+movedans;
     
      if (dans<325){
        movedans=1;
      }
      if (dans>335){
        movedans=-1;
      }
      
      
      
      if (frameCount%15==0){
      
      red = random(1,255);
      green = random(1,255);
      blue = random(1,255);
      
      }
      
      fill(red,green,blue,50);
      rect(0,0,width,height);
      
      fill(0, 0, 0, indtoning);
      rect(0, 0, width, height);
      
    }
    if (skaermbyen==false){
      karakterY=380;
    } 
  } 
}
