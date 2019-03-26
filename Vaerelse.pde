class Vaerelse {


  void display() {

    if (skaermvaerelse==true) {

background(#c0e1f8);


      image(vaerelselukket, 0, 0);
     

      if (karakterX<1060 && karakterX>975) {
        image(vaerelseaaben, 0, 0);
      }
      
      if (spiller==true){
      image(vaerelsespiller,0,0); 
     }
      
    }
  }
}
