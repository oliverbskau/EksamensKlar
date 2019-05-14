

String handlingminC="handlingmin", dagsrytmeC ="dagsrytme", statsklogC="statsklog", statssocialC="statssocial", statssoveC="statssove", dagetileksamenC="dagetileksamen";
  Table table;


 void saveData(){
    table = loadTable("EksamensklarDATA.csv","header");
   TableRow row = table.addRow();
   row.setInt(handlingminC,handlingmin);
   row.setInt(dagsrytmeC,dagsrytme);
   row.setInt(statsklogC,statsklog);
   row.setInt(statssocialC,statssocial);
    row.setInt(statssoveC,statssove);
   row.setInt(dagetileksamenC,dagetileksamen);
   saveTable(table,"EksamensklarDATA.csv");
 }
 
 
 void loadData(){
       table = loadTable("EksamensklarDATA.csv","header");
     int lastIntex = table.getRowCount();
      TableRow r =  table.getRow(lastIntex-1);
       handlingmin = r.getInt(handlingminC);
        dagsrytme = r.getInt(dagsrytmeC);
         statsklog = r.getInt(statsklogC);
          statssocial = r.getInt(statssocialC);
                    statssove = r.getInt(statssoveC);
           dagetileksamen = r.getInt(dagetileksamenC);
       println(handlingmin + " : load : "+ r.getInt(handlingmin)); 
 }
  
 
  
  
  
