class Dagsvalg {



  void display() {

    if (sover==true) {

      textSize(200);
      fill(255);
      text("DAG " + dagsrytme, 250, 400);
    }


    if (visMenuV==0 && spilkarakterskaerm==true) {
      textSize(20);
      fill(0);
      text("Dag " + dagsrytme, 1000, 50);

      textSize(20);
      fill(0);
      text("Handling " + handlingmin, 1100, 50);

      textSize(20);
      fill(0);
      text("/ 2", 1210, 50);
    }
  }
}
