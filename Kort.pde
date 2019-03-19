class Kort {

  void display() {

    if (skaermkort==true) {

      image(map, 0, 0);

      if (mouseX<410 && mouseX>125 && mouseY>243 && mouseY<490) {
        image(mapcafe, 0, 0);
      }
      if (mouseX<880 && mouseX>555 && mouseY>70 && mouseY<256) {
        image(mapbib, 0, 0);
      }
      if (mouseX>1056 && mouseX<width && mouseY>0 && mouseY<168) {
        image(mapby, 0, 0);
      }
      if (mouseX>840 && mouseX<1205 && mouseY>318 && mouseY<669) {
        image(maphjem, 0, 0);
      }

      fill(0, 0, 0, indtoningkort);
      rect(0, 0, width, height);

      indtoningkort=indtoningkort-5;
    }
  }
}
