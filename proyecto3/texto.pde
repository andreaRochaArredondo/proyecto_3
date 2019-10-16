class Texto{
  
  void Tcaso1(){
    fill(255);
    PFont f = createFont("SHOWG.TTF",48);
    textFont(f);
    textAlign(CORNER);
    textSize(60);
    text("Crazy colorful rainbow",108,200);
    PFont fa = createFont("comicbd.ttf",48);
    textFont(fa);
    textAlign(CORNER);
    textSize(30);
    text("Presiona la pantalla para continuar",250,400);
}
  void Tcaso2(){
    PFont fa = createFont("comicbd.ttf",48);
    textFont(fa);
     fill(255);
     textSize(40);
    text("Instrucciones",355,50);
    textSize(30);
   text("Hay 4 figuras con movimiento en la pantalla",155,100);
   text("podras quitar y poner cada una de ellas para",155,150);
   text("poder crear una pintura digital colorida y unica. ",155,200);
   textSize(13);
   text("Para agregar más presiona 1",105,310);
   text("Para quitar  presiona a",105,325);
   text("Para agregar más presiona 2",305,310);
   text("Para quitar  presiona s",305,325);
   text("Para agregar más presiona 3",505,310);
   text("Para quitar  presiona d",505,325);
   text("Para agregar más presiona 4",705,310);
   text("Para quitar  presiona f",705,325);
   fill(0,0,0);
     textSize(20);
    text("Presiona con el mouse para continuar",300,420);
}

 void Tcaso3(){
 fill(255);
 PFont fa = createFont("comicbd.ttf",48);
    textFont(fa);
    textSize(50);
    text("Que hermosa pintura digital",150,200);
    textSize(30);
    text("Para volver a empezar haz click",300,320);
    text("        en la pantalla",300,360);
 }
 
 void Tcaso4(){
 fill(255);
 PFont fa = createFont("comicbd.ttf",48);
    textFont(fa);
    textSize(20);
    text("Presiona Ctrl",400,200);
    text("para guardar tu",400,220);
    text("pintura.",400,240);
   
    textAlign(CORNER);
    textSize(10);
    text("Presiona la pantalla para continuar",400,250);
 }
 
}
