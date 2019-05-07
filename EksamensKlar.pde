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

PImage MenuKnap;

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
PImage aflever;
boolean afleveret=false;
boolean bestaaet = false;
boolean dumpet = false;
float eksamensover=0;
PImage traet;
PImage trist;
PImage sove;
boolean fortrist = false;
boolean fortraet = false;
boolean faldtisovn = false;




//eksamen svarmuligheder
boolean svar1 = false;
boolean svar2 = false;
boolean svar3 = false;
boolean svar4 = false;
boolean svar5 = false;
boolean svar6 = false;
boolean svar7 = false;
boolean svar8 = false;
boolean svar9 = false;
boolean svar10 = false;

float svarX;
float svarY;
float svarX2;
float svarY2;
float svarX3;
float svarY3;
float svarX4;
float svarY4;
float svarX5;
float svarY5;
float svarX6;
float svarY6;
float svarX7;
float svarY7;
float svarX8;
float svarY8;
float svarX9;
float svarY9;
float svarX10;
float svarY10;

int korrekt;
int korrekt2;
int korrekt3;
int korrekt4;
int korrekt5;
int korrekt6;
int korrekt7;
int korrekt8;
int korrekt9;
int korrekt10;

int forkert;
int forkert2;
int forkert3;
int forkert4;
int forkert5;
int forkert6;
int forkert7;
int forkert8;
int forkert9;
int forkert10;

int korrektesvar;
int forkertesvar;



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
  MenuKnap = loadImage("menuknap.png");

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
  aflever = loadImage("aflever.png");
  traet = loadImage("træt.png");
  trist = loadImage("trist.png");
  sove = loadImage("sove.png");
}


void draw() {
  //kode
  //koder en knap
  background(255); 



  println(mouseX, mouseY, visMenuV);

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
  
  // vis styring i spillet
  
  if (key=='m' && spilkarakterskaerm==true || key=='m' && skaermkort==true){
   visMenuV=4; 
  }

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

  if (key=='l') {
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
  
  // hvis spillet er startet og man skal fra styring tilbage til spillet
  
    if ( spilkarakterskaerm==true && visMenuV==4 && mouseX>=1000 && mouseY>=500 && mouseX<=1200 && mouseY<=640 || skaermkort==true && visMenuV==4 && mouseX>=1000 && mouseY>=500 && mouseX<=1200 && mouseY<=640){
   visMenuV=0; 
  }

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
  if (mouseX>412 && mouseX<570 && mouseY>80 && mouseY<340 && dagsrytme==7 && handlingmin==2 && skaermkort==true && statssove>=2 && statssocial>=3) {
    skaermeksamen=true;
    spilkarakterskaerm=false;
    skaermkort=false;
    skaermvaerelse=false;
    skaermbyen=false;
    skaermbibliotek=false;
    skaermcafe=false;
    indtoning=255;
  }

  // for træt
  if (fortraet==false && mouseX>412 && mouseX<570 && mouseY>80 && mouseY<340 && dagsrytme==7 && handlingmin==2 && skaermkort==true && statssove==1) {
    skaermkort=false;
    fortraet=true;
  }
  // for trist  
  if (fortrist==false &&mouseX>412 && mouseX<570 && mouseY>80 && mouseY<340 && dagsrytme==7 && handlingmin==2 && skaermkort==true && statssocial<=2) {
    skaermkort=false;
    fortrist=true;
  }

  // start forfra fra trist og træt og faldt i søvn
  if (faldtisovn==true && mouseX>788 && mouseX<1085 && mouseY>510 && mouseY<630) {
    faldtisovn=false;
    fortrist=false;
    fortraet=false;
    visMenuV=1;
    visMenu=true;
    spilkarakterskaerm=false;
    skaermkort=false;
    skaermbibliotek=false;
    skaermcafe=false;
    skaermbyen=false;
    skaermeksamen=false;
    indtoning=255;
    dagsrytme=1;
    handlingmin=0;
    korrekt=0;
    korrekt2=0;
    korrekt3=0;
    korrekt4=0;
    korrekt5=0;
    korrekt6=0;
    korrekt7=0;
    korrekt8=0;
    korrekt9=0;
    korrekt10=0;
    forkert=0;
    forkert2=0;
    forkert3=0;
    forkert4=0;
    forkert5=0;
    forkert6=0;
    forkert7=0;
    forkert8=0;
    forkert9=0;
    forkert10=0;
    statssove=4;
    statssocial=1;
    statsklog=1;
    eksamensover=0;
    karakterX = 640;
    karakterY = 380;
  }
  if (fortrist==true && mouseX>788 && mouseX<1085 && mouseY>510 && mouseY<630) {
    fortrist=false;
    visMenuV=1;
    visMenu=true;
    spilkarakterskaerm=false;
    skaermkort=false;
    skaermbibliotek=false;
    skaermcafe=false;
    skaermbyen=false;
    skaermeksamen=false;
    indtoning=255;
    dagsrytme=1;
    handlingmin=0;
    korrekt=0;
    korrekt2=0;
    korrekt3=0;
    korrekt4=0;
    korrekt5=0;
    korrekt6=0;
    korrekt7=0;
    korrekt8=0;
    korrekt9=0;
    korrekt10=0;
    forkert=0;
    forkert2=0;
    forkert3=0;
    forkert4=0;
    forkert5=0;
    forkert6=0;
    forkert7=0;
    forkert8=0;
    forkert9=0;
    forkert10=0;
    statssove=4;
    statssocial=1;
    statsklog=1;
    eksamensover=0;
    karakterX = 640;
    karakterY = 380;
  }
  if (fortraet==true && mouseX>788 && mouseX<1085 && mouseY>510 && mouseY<630) {
    faldtisovn=false;
    fortrist=false;
    fortraet=false;
    visMenuV=1;
    visMenu=true;
    spilkarakterskaerm=false;
    skaermkort=false;
    skaermbibliotek=false;
    skaermcafe=false;
    skaermbyen=false;
    skaermeksamen=false;
    indtoning=255;
    dagsrytme=1;
    handlingmin=0;
    korrekt=0;
    korrekt2=0;
    korrekt3=0;
    korrekt4=0;
    korrekt5=0;
    korrekt6=0;
    korrekt7=0;
    korrekt8=0;
    korrekt9=0;
    korrekt10=0;
    forkert=0;
    forkert2=0;
    forkert3=0;
    forkert4=0;
    forkert5=0;
    forkert6=0;
    forkert7=0;
    forkert8=0;
    forkert9=0;
    forkert10=0;
    statssove=4;
    statssocial=1;
    statsklog=1;
    eksamensover=0;
    karakterX = 640;
    karakterY = 380;
  }


  //aflever prøve

  if (mouseX>843 && mouseX<1140 && mouseY>570 && mouseY<685 && svar1==true && svar2==true && svar3==true && svar4==true && svar5==true && svar6==true && svar7==true && svar8==true && svar9==true && svar10==true) {
    skaermeksamen=false;
    afleveret=true;
  }
  
  if (afleveret==true && mouseX>788 && mouseX<1085 && mouseY>510 && mouseY<630){
      faldtisovn=false;
    fortrist=false;
    fortraet=false;
    visMenuV=1;
    visMenu=true;
    spilkarakterskaerm=false;
    skaermkort=false;
    skaermbibliotek=false;
    skaermcafe=false;
    skaermbyen=false;
    skaermeksamen=false;
    indtoning=255;
    dagsrytme=1;
    handlingmin=0;
    korrekt=0;
    korrekt2=0;
    korrekt3=0;
    korrekt4=0;
    korrekt5=0;
    korrekt6=0;
    korrekt7=0;
    korrekt8=0;
    korrekt9=0;
    korrekt10=0;
    forkert=0;
    forkert2=0;
    forkert3=0;
    forkert4=0;
    forkert5=0;
    forkert6=0;
    forkert7=0;
    forkert8=0;
    forkert9=0;
    forkert10=0;
    statssove=4;
    statssocial=1;
    statsklog=1;
    eksamensover=0;
    karakterX = 640;
    karakterY = 380;
    
  }

  //eksamens svar 1
  if (mouseX>161 && mouseX<174 && mouseY>151 && mouseY<164 && skaermeksamen==true) {
    svar1=true;
    svarX=165;
    svarY=156;
    forkert=1;
    korrekt=0;
  }
  if (mouseX>310 && mouseX<324 && mouseY>151 && mouseY<164 && skaermeksamen==true) {
    svar1=true;
    svarX=317;
    svarY=156;
    korrekt=1;
    forkert=0;
  }
  if (mouseX>448 && mouseX<460 && mouseY>151 && mouseY<164 && skaermeksamen==true) {
    svar1=true;
    svarX=453;
    svarY=156;
    forkert=1;
    korrekt=0;
  }
  if (mouseX>574 && mouseX<588 && mouseY>151 && mouseY<164 && skaermeksamen==true) {
    svar1=true;
    svarX=579;
    svarY=156;
    korrekt=0;
    forkert=1;
  }
  //eksamens svar 2
  if (mouseX>150 && mouseX<162 && mouseY>204 && mouseY<217 && skaermeksamen==true) {
    svar2=true;
    svarX2=155;
    svarY2=209;
    korrekt2=1;
    forkert2=0;
  }
  if (mouseX>293 && mouseX<308 && mouseY>204 && mouseY<217 && skaermeksamen==true) {
    svar2=true;
    svarX2=300;
    svarY2=209;
    korrekt2=0;
    forkert2=1;
  }
  if (mouseX>438 && mouseX<450 && mouseY>204 && mouseY<217 && skaermeksamen==true) {
    svar2=true;
    svarX2=443;
    svarY2=209;
    korrekt2=0;
    forkert2=1;
  }
  if (mouseX>564 && mouseX<577 && mouseY>204 && mouseY<217 && skaermeksamen==true) {
    svar2=true;
    svarX2=569;
    svarY2=209;
    korrekt2=0;
    forkert2=1;
  }

  //eksamens svar 3
  if (mouseX>140 && mouseX<153 && mouseY>257 && mouseY<271 && skaermeksamen==true) {
    svar3=true;
    svarX3=145;
    svarY3=264;
    korrekt3=0;
    forkert3=1;
  }
  if (mouseX>301 && mouseX<314 && mouseY>257 && mouseY<271 && skaermeksamen==true) {
    svar3=true;
    svarX3=307;
    svarY3=264;
    korrekt3=0;
    forkert3=1;
  }
  if (mouseX>447 && mouseX<460 && mouseY>257 && mouseY<271 && skaermeksamen==true) {
    svar3=true;
    svarX3=452;
    svarY3=264;
    korrekt3=1;
    forkert3=0;
  }
  if (mouseX>137 && mouseX<150 && mouseY>280 && mouseY<293 && skaermeksamen==true) {
    svar3=true;
    svarX3=140;
    svarY3=286;
    korrekt3=0;
    forkert3=1;
  }
  // eksamens svar 4
  if (mouseX>126 && mouseX<139 && mouseY>333 && mouseY<347 && skaermeksamen==true) {
    svar4=true;
    svarX4=130;
    svarY4=339;
    korrekt4=0;
    forkert4=1;
  }
  if (mouseX>252 && mouseX<265 && mouseY>333 && mouseY<347 && skaermeksamen==true) {
    svar4=true;
    svarX4=257;
    svarY4=339;
    korrekt4=1;
    forkert4=0;
  }
  if (mouseX>396 && mouseX<410 && mouseY>333 && mouseY<347 && skaermeksamen==true) {
    svar4=true;
    svarX4=400;
    svarY4=339;
    korrekt4=0;
    forkert4=1;
  }
  if (mouseX>537 && mouseX<552 && mouseY>333 && mouseY<347 && skaermeksamen==true) {
    svar4=true;
    svarX4=544;
    svarY4=339;
    korrekt4=0;
    forkert4=1;
  }
  //eksamens svar 5
  if (mouseX>116 && mouseX<130 && mouseY>386 && mouseY<399 && skaermeksamen==true) {
    svar5=true;
    svarX5=122;
    svarY5=392;
    korrekt5=0;
    forkert5=1;
  }
  if (mouseX>249 && mouseX<263 && mouseY>386 && mouseY<399 && skaermeksamen==true) {
    svar5=true;
    svarX5=255;
    svarY5=392;
    korrekt5=1;
    forkert5=0;
  }
  if (mouseX>390 && mouseX<402 && mouseY>386 && mouseY<399 && skaermeksamen==true) {
    svar5=true;
    svarX5=394;
    svarY5=392;
    korrekt5=0;
    forkert5=1;
  }
  if (mouseX>538 && mouseX<550 && mouseY>386 && mouseY<399 && skaermeksamen==true) {
    svar5=true;
    svarX5=543;
    svarY5=392;
    korrekt5=0;
    forkert5=1;
  }
  // eksamens svar 6 

  if (mouseX>105 && mouseX<118 && mouseY>439 && mouseY<453 && skaermeksamen==true) {
    svar6=true;
    svarX6=111;
    svarY6=446;
    korrekt6=0;
    forkert6=1;
  }

  if (mouseX>246 && mouseX<261 && mouseY>439 && mouseY<453 && skaermeksamen==true) {
    svar6=true;
    svarX6=253;
    svarY6=446;
    korrekt6=0;
    forkert6=1;
  }

  if (mouseX>385 && mouseX<398 && mouseY>439 && mouseY<453 && skaermeksamen==true) {
    svar6=true;
    svarX6=391;
    svarY6=446;
    korrekt6=1;
    forkert6=0;
  }
  if (mouseX>527 && mouseX<541 && mouseY>439 && mouseY<453 && skaermeksamen==true) {
    svar6=true;
    svarX6=534;
    svarY6=446;
    korrekt6=0;
    forkert6=1;
  }

  // eksamens svar 7
  if (mouseX>93 && mouseX<104 && mouseY>493 && mouseY<508 && skaermeksamen==true) {
    svar7=true;
    svarX7=99;
    svarY7=501;
    korrekt7=1;
    forkert7=0;
  }
  if (mouseX>237 && mouseX<252 && mouseY>493 && mouseY<508 && skaermeksamen==true) {
    svar7=true;
    svarX7=243;
    svarY7=501;
    korrekt7=0;
    forkert7=1;
  }
  if (mouseX>384 && mouseX<397 && mouseY>493 && mouseY<508 && skaermeksamen==true) {
    svar7=true;
    svarX7=388;
    svarY7=501;
    korrekt7=0;
    forkert7=1;
  }
  if (mouseX>524 && mouseX<539 && mouseY>493 && mouseY<508 && skaermeksamen==true) {
    svar7=true;
    svarX7=531;
    svarY7=501;
    korrekt7=0;
    forkert7=1;
  }

  // eksamens svar 8
  if (mouseX>83 && mouseX<94 && mouseY>548 && mouseY<562 && skaermeksamen==true) {
    svar8=true;
    svarX8=89;
    svarY8=554;
    korrekt8=0;
    forkert8=1;
  }
  if (mouseX>229 && mouseX<242 && mouseY>548 && mouseY<562 && skaermeksamen==true) {
    svar8=true;
    svarX8=234;
    svarY8=554;
    korrekt8=0;
    forkert8=1;
  }
  if (mouseX>373 && mouseX<386 && mouseY>548 && mouseY<562 && skaermeksamen==true) {
    svar8=true;
    svarX8=379;
    svarY8=554;
    korrekt8=1;
    forkert8=0;
  }
  if (mouseX>525 && mouseX<538 && mouseY>548 && mouseY<562 && skaermeksamen==true) {
    svar8=true;
    svarX8=532;
    svarY8=554;
    korrekt8=0;
    forkert8=1;
  }

  // eksamens svar 9
  if (mouseX>72 && mouseX<86 && mouseY>600 && mouseY<615 && skaermeksamen==true) {
    svar9=true;
    svarX9=77;
    svarY9=608;
    korrekt9=0;
    forkert9=1;
  }
  if (mouseX>221 && mouseX<233 && mouseY>600 && mouseY<615 && skaermeksamen==true) {
    svar9=true;
    svarX9=227;
    svarY9=608;
    korrekt9=0;
    forkert9=1;
  }
  if (mouseX>368 && mouseX<381 && mouseY>600 && mouseY<615 && skaermeksamen==true) {
    svar9=true;
    svarX9=373;
    svarY9=608;
    korrekt9=1;
    forkert9=0;
  }
  if (mouseX>527 && mouseX<542 && mouseY>600 && mouseY<615 && skaermeksamen==true) {
    svar9=true;
    svarX9=534;
    svarY9=608;
    korrekt9=0;
    forkert9=1;
  }

  //eksamens svar 10
  if (mouseX>61 && mouseX<75 && mouseY>655 && mouseY<668 && skaermeksamen==true) {
    svar10=true;
    svarX10=68;
    svarY10=661;
    korrekt10=0;
    forkert10=1;
  }
  if (mouseX>219 && mouseX<233 && mouseY>655 && mouseY<668 && skaermeksamen==true) {
    svar10=true;
    svarX10=223;
    svarY10=661;
    korrekt10=0;
    forkert10=1;
  }
  if (mouseX>365 && mouseX<378 && mouseY>655 && mouseY<668 && skaermeksamen==true) {
    svar10=true;
    svarX10=370;
    svarY10=661;
    korrekt10=1;
    forkert10=0;
  }
  if (mouseX>526 && mouseX<538 && mouseY>655 && mouseY<668 && skaermeksamen==true) {
    svar10=true;
    svarX10=531;
    svarY10=661;
    korrekt10=0;
    forkert10=1;
  }
}
