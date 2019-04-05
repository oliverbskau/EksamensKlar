class Menu{
  
  void display(){
    if(visMenu == true){
    
    image(menuskaerm,0,0);
    
    if(mouseX>=550 && mouseY>=245 && mouseX<=730 && mouseY<=300){
      image(startspil,0,0);
    }
    
    if(mouseX>=525 && mouseY>=375 && mouseX<=755 && mouseY<=440){
      image(styringspil,0,0);
    }
    
    if(mouseX>=520 && mouseY>=525 && mouseX<=760 && mouseY<=585){
      image(creditsspil,0,0);
    }
    
    image(kridt,mouseX-40,mouseY-30);
    }
  }
  
  void maalDisplay(){
    if(visMaal == true){
    image(maal,0,0);
    image(kridt,mouseX-40,mouseY-30);
    }
  }
  
  void styringDisplay(){
    if(visStyring == true){
      image(controls,0,0);
      image(kridt,mouseX-40,mouseY-30);
    }
  }
  
  void creditsDisplay(){
    if(visCredits == true){
      image(credits,0,0);
      image(kridt,mouseX-40,mouseY-30);
    }
  }
  
}
