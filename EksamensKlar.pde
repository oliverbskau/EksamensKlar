//Menu
Menu menu = new Menu();
PImage menuskaerm;
PImage startspil;
PImage styringspil;
PImage creditsspil;
PImage kridt;
boolean visMenu = true;
boolean visMaal = false;
boolean visStyring = false;
boolean visCredits = false;
PImage maal;
PImage controls;
PImage credits;
int visMenuV=1;

//POP OP tekst
Tekstvalg tekst = new Tekstvalg();

// dag og nat + valg 
int intellekt=1;
int intellektplus=0;
int dagsrytme=1;
Dagsvalg dagen = new Dagsvalg();
int dagogtid=1;
int handlingmax=2;
int handlingmin=0;
Soveadvarsel advarsel = new Soveadvarsel();

//eksamensadvarsel
Eksamensadvarsel eksadv = new Eksamensadvarsel();
int dagetileksamen=7;


int sovn=1;
int sovnplus=0;

int socialitet=1;
int socialitetplus=0;

int dag=1;
int dagplus=0;

// vis statistik
Statistik stats = new Statistik();
boolean statistikker=false;
int statssove=4;
int ss1=255;
int ss2=255;
int ss3=255;
int ss4=255;
int ss5;

int statsklog=1;
int sk1=255;
int sk2;
int sk3;
int sk4;
int sk5;

int statssocial=1;
int sg1=255;
int sg2;
int sg3;
int sg4;
int sg5;


// indtoning til skærme
float indtoning=255;
Indtoning ind = new Indtoning();
boolean indtoningstart = false;

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


//karakter sover
boolean sover = false;
float udtoningsover = 0;
PImage vaerelsesover;

//spiller spil
PImage vaerelsespiller;
boolean spiller = false;


//kort
boolean skaermkort = false;
boolean skaermkortvalg = true;
PImage map;
PImage mapby;
PImage mapcafe;
PImage maphjem;
PImage mapbib;

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
Cafe cafe = new Cafe();

//Sid i cafe stol
PImage cafesiddende;
PImage spillerarm;
PImage spillerhovede;
float roterspillerarm=0;
float rotererspillerarm=1;
Boolean cafesidder = false;


//Bibliotek
PImage bibliotekaaben;
PImage biblioteklukket;
PImage biblioteklaeser;
boolean skaermbibliotek = false;
boolean laeser = false;
Bibliotek bib = new Bibliotek();


// byen
PImage bar;
PImage bartenderhovede;
PImage oliverhovede;
PImage skydedor;
PImage drinks;
float dor=1017;
float bevaegdor=0;
boolean dorlukker=false;
boolean doraabner=false;
float red;
float green;
float blue;
float dans=355;
float movedans=1;
boolean skaermbyen = false;
boolean drikkerdrinks = false;

// eksamen
boolean eksamensklar=false;
PImage skole;
PImage eksamen;
PImage eksamenstest;
boolean skaermeksamen = false;
Eksamenstart eks = new Eksamenstart();
boolean visnotater=false;
PImage noteraaben;
PImage blyant;



Byen byen = new Byen();

void setup() {

  size(1280, 720);
  menuskaerm = loadImage("menu.png");
  startspil = loadImage("menustart.png");
  styringspil = loadImage("menustyring.png");
  creditsspil = loadImage("menucredits.png");
  kridt = loadImage("kridt.png");
  maal = loadImage("spilmål.png");
  controls = loadImage("spilstyring.png");
  credits = loadImage("credits.png");

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
  cafesiddende = loadImage("cafesiddende (1).png");
  spillerarm = loadImage("underarmcafe.png");
  spillerhovede = loadImage("cafehoved.png");

  benhojre = loadImage("ben.png");
  benvenstre = loadImage("benspejlvendt.png");
  kropudenben = loadImage("karakterudenben.png");
  kropvenstre = loadImage("karakterspejlvendt.png");
  vaerelseaaben = loadImage("værelseåben.png");
  vaerelselukket = loadImage("værelselukket.png");
  vaerelsesover = loadImage("værelsesover.png");
  vaerelsespiller = loadImage("værelsespiller.png");

  bibliotekaaben = loadImage("bibliotekåben.png");
  biblioteklukket = loadImage("biblioteklukket.png");
  biblioteklaeser = loadImage("biblioteklaeser.png");

  bar = loadImage("bar.png");
  oliverhovede = loadImage("oliverhovede.png");
  bartenderhovede = loadImage("bartenderhovede.png");
  skydedor = loadImage("dør.png");
  drinks = loadImage("barmedperson.png");

  skole = loadImage("mapSkole.png");
  eksamen = loadImage("mapEksamen.png");
  eksamenstest = loadImage("eksamen.png");
  noteraaben = loadImage("noteråben.png");
  blyant = loadImage("blyant.png");
}


void draw() {
  //kode
  //koder en knap
  background(255); 



  println(mouseX,mouseY);

  vaerelse.display();

  cafe.display(); 

  kort.display();

  bib.display();

  byen.display();
  
  eks.display();

  spilkarakter.display();

  ind.display();

  tekst.display();

  menu.display();

  menu.maalDisplay();

  menu.styringDisplay();

  menu.creditsDisplay();

  stats.display();

  advarsel.display();

  eksadv.display();

  dagen.display();
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

  if (karakterX > 45 && karakterX < 400 && key==' ' && skaermvaerelse==true && sover==false && udtoningsover==0 && handlingmin>0 && dagsrytme<7 || karakterX > 45 && karakterX < 400 && key==' ' && skaermvaerelse==true && sover==false && udtoningsover==1 && handlingmin>0 && dagsrytme<7) {
    sover = true;
    dagsrytme++;
    statssove=statssove+3;
    statsklog=statsklog-1;
    statssocial=statssocial-1;
    handlingmin=0;
  }

  // spil computer

  if (karakterX>575 && karakterX< 640 && skaermvaerelse==true && key==' ' && handlingmin<2) {
    spiller=true;
    spilkarakterskaerm=false;
    statsklog=statsklog-1;
    statssocial=statssocial+1;
    statssove=statssove-1;
    handlingmin=handlingmin+1;
  }

  if (karakterX>575 && karakterX< 640 && skaermvaerelse==true && key=='d' && spiller==true || karakterX>575 && karakterX< 640 && skaermvaerelse==true && key=='a' && spiller==true) {
    spiller=false;
    spilkarakterskaerm=true;
  }

  //gå ud af værelset 

  if (karakterX<1060 && karakterX>975 && key==' ' && skaermvaerelse==true) {
    skaermvaerelse=false;
    skaermkort=true;
    spilkarakterskaerm=false;
    indtoning=255;
  }

  // gå ud af cafe

  if (karakterX>1030 && karakterX<width && skaermcafe==true && key==' ') {
    skaermcafe=false;
    spilkarakterskaerm=false;
    skaermkort=true;
    indtoning=255;
  }

  //sid på cafe

  if (karakterX>475 && karakterX<515 && skaermcafe==true && key==' ' && cafesidder==false && handlingmin<2) {
    cafesidder=true; 
    spilkarakterskaerm=false;
    statssove=statssove+1;
    handlingmin=handlingmin+1;
  }
  // gå væk fra cafestol
  if (karakterX>475 && karakterX<515 && skaermcafe==true && key=='d' || karakterX>475 && karakterX<515 && skaermcafe==true && key=='a') {
    cafesidder=false;
    spilkarakterskaerm=true;
  }

  //gå ud af bibliotek
  if (karakterX>1013 && karakterX<width && skaermbibliotek==true && key==' ') {
    skaermbibliotek=false;
    spilkarakterskaerm=false;
    skaermkort=true;
    indtoning=255;
  }
  //læs på bibliotek
  if (karakterX<210 && skaermbibliotek==true && key==' ' && laeser==false && handlingmin<2) {
    laeser = true;
    statsklog=statsklog+3;
    statssove=statssove-2;
    handlingmin=handlingmin+1;
  }
  //stop med at læse
  if (laeser==true && key=='d') {
    laeser=false;
  }

  //tag hjem fra byen og sov
  if (karakterX<width && karakterX>975 && skaermbyen==true && key==' ') {
    skaermbyen=false;
    skaermkort=false;
    spilkarakterskaerm=true;
    skaermvaerelse=true;
    indtoning=255;
  }

  //drik en drink i byen
  if (karakterX>305 && karakterX<355 && skaermbyen==true && key==' ' && drikkerdrinks==false && handlingmin==0) {
    drikkerdrinks=true;
    spilkarakterskaerm=false;
    statssocial=statssocial+3;
    statssove=statssove-3;
    statsklog=statsklog-4;
    handlingmin=handlingmin+2;
  }

  if (karakterX>305 && karakterX<355 && skaermbyen==true && key=='d') {
    drikkerdrinks=false;
    spilkarakterskaerm=true;
  }

  //Her vises statistikker

  if (keyCode==TAB) {

    statistikker=true;
  }
}

void keyReleased() {

  //styring af karakter
  
  if (key=='l'){
   dagsrytme=7;
   handlingmin=2;
  }

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

  // her fjernes statistikker

  if (keyCode==TAB) {

    statistikker=false;
  }
}

void mousePressed() {

  //start spillet
  if (visMenuV == 1 && mouseX>=550 && mouseY>=245 && mouseX<=730 && mouseY<=300) {
    spilkarakterskaerm=true;
    skaermvaerelse=true;
    indtoningstart = true;
    visMenuV = 0;
    statssove=4;
    statssocial=1;
    statsklog=1;
    dagsrytme=1;
    skaermkortvalg=true;
    eksamensklar=false;
    skaermeksamen=false;
  }

  //vis formål med spillet
  if (visMenuV == 1 && mouseX>=525 && mouseY>=375 && mouseX<=755 && mouseY<=440) {

    visMenuV=2;
  } 

  //fra formål til styring
  if (visMenuV == 2 && mouseX>=1000 && mouseY>=500 && mouseX<=1200 && mouseY<=640) {
    visMenuV++;
  }

  //fra styring til menu


  if (visMenuV == 4 && mouseX>=1000 && mouseY>=500 && mouseX<=1200 && mouseY<=640) {
    visMenuV = 1;
  }


  //fra menu til credits
  if (visMenuV == 1 && mouseX>=520 && mouseY>=525 && mouseX<=760 && mouseY<=585) {
    visMenuV = 5;
  }

  //fra credits til menu
  if (visMenuV == 5 && mouseX>=1000 && mouseY>=500 && mouseX<=1200 && mouseY<=640) {
    visMenuV = 1;
  }

  if (visMenuV == 3 && mouseX>=1000 && mouseY>=500 && mouseX<=1200 && mouseY<=640) {
    visMenuV++;
  }


  //tag hjem fra kortskærmen 
  if (mouseX>840 && mouseX<1205 && mouseY>318 && mouseY<669 && skaermkort==true && skaermkortvalg==true) {
    skaermvaerelse=true;
    skaermkort=false;
    skaermcafe=false;
    skaermbibliotek=false;
    spilkarakterskaerm=true;
    skaermbyen=false;
    indtoning=255;
    karakterX=1015;
  }

  //tag ind på cafeen

  if (mouseX<410 && mouseX>125 && mouseY>243 && mouseY<490 && skaermkort==true && skaermkortvalg==true) {
    skaermvaerelse=false;
    skaermkort=false;
    spilkarakterskaerm=true;
    skaermcafe=true;
    skaermbibliotek=false;
    skaermbyen=false;
    indtoning=255;
    karakterX=1090;
  }



  // tag ind på bibliotek

  if (mouseX<880 && mouseX>555 && mouseY>70 && mouseY<256 && skaermkort==true && skaermkortvalg==true) {
    skaermvaerelse=false;
    skaermkort=false;
    spilkarakterskaerm=true;
    skaermcafe=false;
    skaermbibliotek=true;
    skaermbyen=false;
    indtoning=255;
    karakterX=1100;
  }


  // tag i byen

  if (mouseX>1056 && mouseX<width && mouseY>0 && mouseY<168 && skaermkort==true && handlingmin==0 && skaermkortvalg==true) {
    skaermvaerelse=false;
    skaermkort=false;
    spilkarakterskaerm=true;
    skaermcafe=false;
    skaermbibliotek=false;
    skaermbyen=true;
    indtoning=255;   
    karakterX=1100; 
    dor=1200;
  }

  //tag til eksamen
  if (mouseX>412 && mouseX<570 && mouseY>80 && mouseY<340 && dagsrytme==7 && handlingmin==2 && skaermkort==true) {
    skaermeksamen=true;
    spilkarakterskaerm=false;
    skaermkort=false;
    skaermvaerelse=false;
    skaermbyen=false;
    skaermbibliotek=false;
    skaermcafe=false;
    indtoning=255;
  }
  
  
  
}
