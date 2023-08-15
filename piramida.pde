int laturi; 
float unghiStart, inaltime;
PVector puncte[][];
String[] denumiri = {
  "triunghiulara", 
  "patrulatera", 
  "pentagonala", 
  "hexagonala", 
  "heptagonala", 
  "octagonala", 
  "eneagonala", 
  "decagonala", 
  "hendecagonala", 
  "dodecagonala", 
  "triskaidecagonala", 
  "tetrakaidecagonala", 
  "pentakaidecagonala", 
  "hexakaidecagonala", 
  "heptakaidecagonala", 
  "octakaidecagonala", 
  "eneakaidecagonala", 
  "icosagonala",
};
void piramida()
{ 
  
    translate( translatie[0], translatie[1], translatie[2]);
    rotateX(rotatie[0]);
    rotateY(rotatie[1]);
    rotateZ(rotatie[2]);
    scale(scalare[0],scalare[1],scalare[2]);
   
    
   PVector[] basePts = new PVector[laturi];
    for (int i = 0; i < laturi; ++i ) {
        float unghi = TWO_PI * i / laturi;
        basePts[i] = new PVector(cos(unghi) * width/4, sin(unghi) * width/4, -height/4);
    }

    beginShape(TRIANGLES);
    for (int i = 0; i < laturi; ++i ) {
        int i2 = (i+1) % laturi;
        vertex(basePts[i].x, basePts[i].y, basePts[i].z);
        vertex(basePts[i2].x, basePts[i2].y, basePts[i2].z);//conecteaza laturile piramidei
        vertex(0, 0, height/4);
    }
    endShape();

    beginShape();
    for (int i = 0; i < laturi; ++i ) {
        vertex(basePts[i].x, basePts[i].y, basePts[i].z);//baza piramidei
    }
    endShape(CLOSE);
}

  
  
  
