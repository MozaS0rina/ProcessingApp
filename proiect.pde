PFont tnr;
Boolean wireframe=false;
int increment,pro=0;
color culori;//necesar la colorarea piramidei
float[] translatie;
float[] rotatie;
float[] scalare;

void setup()
{
  size(900,580,P3D);//dimensiune fereastra
  tnr=loadFont("tnr.vlw");
  initializari();//in conditii

 textMode(SCREEN);
 fill(15);
 stroke(255);
 rect(0,0,500,500); //fereastrea de desenare
 interfata();
}
void interfata()//interfata meniu
 { noStroke();
  fill(#CAE8FA);//caseta 1 dreapta cu nr varfuri
 rect(500,0,width,100);
 fill(#F9FFB4);//caseta 2 dreapta cu translatia
 rect(500,100,width,100);
 fill(#CAE8FA);//caseta 3 cu rotatia
 rect(500,200,width,100);
 fill(#F9FFB4);//caseta 4 culori
 rect(500,300,width,100);
 fill(#CAE8FA);//caseta 5 scalare
 rect(500,400,width,100);
 fill(255,0,0);//culoare text 
 text("                           **** NUMARUL DE VARFURI ****",500,20); 
 fill(0);
 text("Pentru a creste numarul de laturi apasati tasta PLUS ",510,40);
 text("Pentru a scadea numarul de laturi apasati tasta MINUS ",510,60);
 
  fill(255,0,0);//culoare text 
 text("                                  **** TRANSLATIE ****",500,120);
  fill(0);
 text("Pentru a misca Piramida folositi sagetile de la tastatura",510,160);
 
  fill(255,0,0);//culoare text 
 text("                                           **** ROTATIE ****",500,220);
  fill(0);
 text("Pentru a roti Piramida dupa axa x apasati tasta X",510,240);
 text("Pentru a roti Piramida dupa axa y apasati tasta Y",510,260);
 text("Pentru a roti Piramida dupa axa z apasati tasta Z",510,280);
 
  fill(255,0,0);//culoare text 
 text("                      **** CULORI SI MOD DE VIZUALIZARE ****",500,320);
  fill(0);
  text("      Rosu(R)    Galben(G)    Verde(V)    Albastru(A)",510,340);
   text("Pentru a selecta modul de vizualizare apasati tasta SPACE",510,360);
   
   fill(255,0,0);//culoare text 
   text("                                           **** SCALARE ****",500,420);
   fill(0);
   text("Pentru a apropia apasati tasta W ,iar pentru a indeparta Q",510,460);
   fill(255,0,0);
   text("Pentru a RESETA Piramida apasati ENTER",510,480);
  
 
}
void draw()
{  
  background(0);//culoarea fundal
  lights();  
  wf();//apelare functia de desenare a culorilor piramidei
  pushMatrix();//functiile de salvare a coordonatelor
  piramida();
  popMatrix();
  
  hint(DISABLE_DEPTH_TEST);//limiteaza piramida ca sa se deseneze in spatele meniului-controleaza 
  interfata();//deseneaza meniul dupa ce e desenata piramida
  fill(15);
  stroke(255);
  //rect(0,0,500,500);//caseta de desenare piramida
  fill(255,150,0);//culoare caseta stanga jos
  rect(0,500,500,height);//caseta de detalii
  fill(#F71181);//culoare caseta dreapta jos
  rect(500,500,width,height);//caseta ultimului proces
  detalii();//conditii caseta stanga jos
  proces();//ultimul proces dreapta jos
  hint(ENABLE_DEPTH_TEST);
}

void keyPressed()
{ 
  switch(key)
     {case 43:{ if(laturi<20)
                  laturi+=1;
                  pro=1;//variabila pentru conditii din functia proces din conditii
              }break;
       case 45:{ if(laturi>3)
                 laturi-=1;
                 pro=2;
               }break;
              
      case 32:{if(increment%2==0)
                 { wireframe=true;//culoare piramida in functie de pozitie cand i se schimba vizualizarea 
                  increment++;
                  pro=3;
                 }
                else
                 {
                   wireframe=false;
                   increment--;
                   pro=4;//variabila pentru conditii din functia proces din conditii
                 }
                  
              }break;
      case 'r':{culori=color(255,0,0); pro=5;}break; //r 
      case 'a':{culori=color(0,0,255); pro=6;}break; //a
      case 'v':{culori=color(0,255,0); pro=7;}break;  //v
      case 'g':{culori=color(255,255,0); pro=8;}break;//g
      case 'x':{rotatie[0]+=radians(10);pro=9;}break;
      case 'y':{rotatie[1]+=radians(10);pro=10;}break;
      case 'z':{rotatie[2]+=radians(10);pro=11;}break;
      case 'w':{
                scalare[0]+=0.02;
                scalare[1]+=0.02;
                scalare[2]+=0.02;pro=12;}break;
      case 'q':{ if(scalare[0]>0.2)
                {scalare[0]-=0.02;
                scalare[1]-=0.02;
                scalare[2]-=0.02;}
                 pro=13;}break;
          
       
     }  
    switch(keyCode)
      {
        case UP:{translatie[1]-=3;pro=14;}break;//functia de translatie 
        case DOWN:{translatie[1]+=3;pro=15;}break;
        case LEFT:{translatie[0]-=3;pro=16;}break;
        case RIGHT:{translatie[0]+=3;pro=17;}break;
        case ENTER:{initializari();pro=18;}break;
      } 
}
