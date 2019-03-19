// spilkarakter
PImage benhojre;
PImage benvenstre;
PImage kropudenben;
PImage kropvenstre;
float karakterX = 640;
float karakterY = 380;
boolean hojre = true;
boolean venstre = false;
float modhojre=0;
float modvenstre=0;
float roterben=0;
float roter=0;
float roterende=1;
boolean roterer = false;
SpilKarakter spilkarakter = new SpilKarakter();
boolean spilkarakterskaerm = false;

//værelse
PImage vaerelselukket;
PImage vaerelseaaben;
Vaerelse vaerelse = new Vaerelse();
boolean skaermvaerelse = false;
float indtoningvaerelse=255;

//søvn
boolean sover = false;
float udtoningsover = 0;

//kort
boolean skaermkort = false;
PImage map;
PImage mapby;
PImage mapcafe;
PImage maphjem;
PImage mapbib;
float indtoningkort=255;
Kort kort = new Kort();

// cafe
boolean skaermcafe = false;
PImage cafeaaben;
PImage cafelukket;
PImage baristahoved;
PImage mandcafehoved;
PImage underarm;
float roterbarista=0;
float roterhovedeB=-0.5;
float rotermand;
float roterhovedeM=-0.1;
float roterunderarm=372;
float roterarm=-0.2;

float indtoningcafe = 255;
Cafe cafe = new Cafe();


void setup() {

  size(1280, 720);

  map = loadImage("map.png");
  mapby = loadImage("mapBy.png");
  mapcafe = loadImage("mapCafe.png");
  maphjem = loadImage("mapHjem.png");
  mapbib = loadImage("mapBib.png");

  cafelukket = loadImage("cafelukket.png");
  cafeaaben = loadImage("cafeåben.png");
  baristahoved = loadImage("baristahoved.png");
  mandcafehoved = loadImage("mandcafehoved.png");
  underarm = loadImage("underarm.png");

  benhojre = loadImage("ben.png");
  benvenstre = loadImage("benspejlvendt.png");
  kropudenben = loadImage("karakterudenben.png");
  kropvenstre = loadImage("karakterspejlvendt.png");
  vaerelseaaben = loadImage("værelseåben.png");
  vaerelselukket = loadImage("værelselukket.png");
}


void draw() {
//kode
//koder en knap
  background(255); 

  println(mouseX, mouseY);

  vaerelse.display();
  
  cafe.display();

  spilkarakter.display(); 

  kort.display();
}


void keyPressed() {

  // styring af karakter

  if (key=='d') {
    hojre=true;
    modhojre=5;
    venstre=false;
    roterer=true;
  }
  if (key=='a') {
    venstre=true;
    modvenstre=5;
    hojre=false;
    roterer=true;
  }

  // gå i seng

  if (karakterX > 45 && karakterX < 400 && key==' ' && skaermvaerelse==true) {
    sover = true;
    
  }

  //gå ud af værelset 

  if (karakterX<1060 && karakterX>975 && key==' ' && skaermvaerelse==true) {
    skaermvaerelse=false;
    skaermkort=true;
    spilkarakterskaerm=false;
    indtoningkort=255;
  }
  
  // gå ud af cafe
  
   if (karakterX>1030 && karakterX<width && skaermcafe==true && key==' '){
        skaermcafe=false;
        spilkarakterskaerm=false;
        skaermkort=true;
        indtoningkort=255;
     }
  
  
}

void keyReleased() {

  //styring af karakter

  if (key=='d') {
    modhojre=0;
    roterer=false;
    roterben=0;
  }
  if (key=='a') {
    modvenstre=0;
    roterer=false;
    roterben=0;
  }

  if (key=='e') {
    spilkarakterskaerm=true;
    skaermvaerelse=true;
  }
}

void mousePressed() {

  
  //tag hjem fra kortskærmen 
  if (mouseX>840 && mouseX<1205 && mouseY>318 && mouseY<669 && skaermkort==true) {
    skaermvaerelse=true;
    skaermkort=false;
    spilkarakterskaerm=true;
    indtoningvaerelse=255;
    karakterX=1015;
  }
  
  //tag ind på cafeen
  
  if (mouseX<410 && mouseX>125 && mouseY>243 && mouseY<490 && skaermkort==true) {
    skaermvaerelse=false;
    skaermkort=false;
    spilkarakterskaerm=true;
    skaermcafe=true;
    indtoningcafe=255;
    karakterX=1090;
      }
  
  
}
