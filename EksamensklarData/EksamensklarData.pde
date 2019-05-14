//Table tab = new Table(); 

String handlingmin = "handlingmin";
String dagsrytme = "dagsrytme";
String statsklog = "statsklog";
String statssocial = "statssocial";
String statssove = "statssove";
String dagetileksamen = "dagetileksamen";

void setup(){/*
  tab.addColumn("handlingmin");
    tab.addColumn("dagsrytme");
        tab.addColumn("statsklog");
            tab.addColumn("statssocial");
                tab.addColumn("statssove");
                 tab.addColumn("dagetileksamen");

  
  
  saveTable(tab,"EksamensklarDATA.csv");
  */
}

void draw(){}


void keyPressed()
{
  Table table;
  
 if(key == 's'){
    table = loadTable("EksamensklarDATA.csv","header");
   TableRow row = table.addRow();
   row.setInt(handlingmin,0);
   row.setInt(dagsrytme,1);
   row.setInt(statsklog,1);
   row.setInt(statssocial,1);
    row.setInt(statssove,4);
   row.setInt(dagetileksamen,6);
   saveTable(table,"EksamensklarDATA.csv");
   
   println("SAVE ...");
 
 }
 
 if(key == 'l'){
    table = loadTable("EksamensklarDATA.csv","header");
   
     int lastIntex = table.getRowCount();
     
      TableRow r =  table.getRow(lastIntex-1);
       
       println(handlingmin + " : "+ r.getInt(handlingmin));
 
 }

}
