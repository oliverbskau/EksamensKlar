class Bibliotek {

  void display() {

    if (skaermbibliotek==true) {

      image(biblioteklukket, 0, 0);

      if (karakterX>1013 && karakterX<width && skaermbibliotek==true) {
        image(bibliotekaaben, 0, 0);
      }




      //læs

      if (laeser==true) {
        image(biblioteklaeser, 0, 0);
      }



      fill(0, 0, 0, indtoning);
      rect(0, 0, width, height);
    }
  }
}
