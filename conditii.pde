 void initializari()
 { culori=255;
  wireframe=false;
  laturi = 3;
  unghiStart = 0;
  inaltime = 60;
  translatie = new float[3];//proces 3d, x y si z, se misca pe axa, cu sagetile
  rotatie=new float[3];//proces 3d, se misca pe axe cu butoanele x y z
  scalare=new float[3];// proces 3d , apropie sau departeaza cu q si w
  translatie[0]=250;
  translatie[1]=250;
  translatie[2]=0;
  rotatie[0]=rotatie[1]=rotatie[2]=12;
  scalare[0]=scalare[1]=scalare[2]=1;
  
 }
void wf()
{//creeaza o culoare la fetele piramidei in functie de pozitia ei pe axe
  if(wireframe)
   {
     fill(culori);
     noStroke();
     
   }
   else
   {
     noFill();
     stroke(culori);
   }
}

void detalii()
 {  fill(0);//culoare text
    text("Denumirea: Piramida "+denumiri[laturi-3],10,530);
    text("Piramida are "+(laturi+1)+" varfuri, "+(laturi*2)+" laturi si "+(laturi+1)+" fete. ",10,550);
    fill(culori);
    
 }
 void proces()
 { fill(0);
   text("Ultimul proces: ",520,520);
   fill(0);
   
    if(pro==0)
    text("S-a desenat o Piramida trigunghiulara",520,540);
   if(pro==1)
    text("S-a adaugat o latura la Piramida precedenta",520,540);
    else
    if(pro==2)
    text("S-a scazut o latura din Piramida precedenta",520,540);
    else
    if(pro==3)
    text("S-a selectat modul de vizualizare pe volumic",520,540);
    else
    if(pro==4)
    text("S-a selectat modul de vizualizare pe wireframe",520,540);
    if(pro==3)
    text("S-a selectat modul de vizualizare pe volumic",520,540);
    else
    if(pro==5)
    text("S-a selectat culoarea rosie",520,540);
    else
    if(pro==6)
    text("S-a selectat culoarea albastra",520,540);
    else
    if(pro==7)
    text("S-a selectat culoarea verde",520,540);
    else
    if(pro==8)
    text("S-a selectat culoarea galbena",520,540);
     if(pro==9)
    text("S-a rotit Piramida dupa axa X",520,540);
    else
     if(pro==10)
    text("S-a rotit Piramida dupa axa y",520,540);
    else
     if(pro==11)
    text("S-a rotit Piramida dupa axa Z",520,540);
    else
     if(pro==12)
    text("S-a marit Piramida",520,540);
    else
     if(pro==13)
    text("S-a micsorat Piramida",520,540);
    if(pro==14)
    text("S-a deplasat Piramida in partea de sus cu o unitate",520,540);
    else
    if(pro==15)
    text("S-a deplasat Piramida in partea de jos cu o unitate",520,540);
    else
    if(pro==16)
    text("S-a deplasat Piramida in partea stanga cu o unitate",520,540);
    else
    if(pro==17)
    text("S-a deplasat Piramida in partea dreapta cu o unitate",520,540);
    else
     if(pro==18)
    text("Piramida a fost resetata!",520,540);
 }
 
