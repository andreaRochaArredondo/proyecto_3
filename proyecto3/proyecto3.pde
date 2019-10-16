import processing.sound.*;
import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;
int pantalla = 0;
Caja una;
Limite uno;
Limite2 dos;
Limite3 tres;
Limite4 cuat;
Texto text;
ArrayList <Caja> cajas;
ArrayList <Cuadro> cuadros;
ArrayList <Circulo> circulos;
ArrayList <Triangulo> triangulos;

SoundFile unico;


PImage textura;
PImage textur;
PImage tex;
PImage trian;
PImage trian2;
PImage trian3;
PImage trian4;
PImage col;

class flujoPantallas{
  int estado;
  
  flujoPantallas(){
    this.estado = 0;
  }
  
  void display(){
    switch(this.estado){
    case 0:
      background(160,150,250);
      imageMode(CORNER);
      image(textura,0,0);
      text.Tcaso1();
    break;
    case 1:
      background(250,150,160);
      imageMode(CORNER);
      image(col,0,0);
      text.Tcaso2();
      image(textur,150,230,60,60);
      image(tex,350,230,60,60);
      image(textura,550,230,60,60);
      image(trian,750,230,60,60);
    break;
    case 2:
      background(250,150,160);
      imageMode(CORNER);
      image(col,0,0);
      text.Tcaso4();
    break;
    case 3:
 
  box2d.step();

  uno.display();
  dos.display();
  tres.display();
  cuat.display();

  for(Caja c:cajas){
    c.display();
  }
  
  for(Cuadro a:cuadros){
    a.display();
    a.mover();
  }
  for(Circulo b: circulos){
    b.display();
    b.mover();
  }
  for(Triangulo t: triangulos){
    t.mover();
  }
 
    break;
    case 4:
   text.Tcaso3();
    break;
  }
  }
  
  void cambioPantalla(){
    estado++;
  if(estado>4){
    estado = 0;
  }
  }
  
  
}

flujoPantallas uni;


void setup(){
  size(970,450);
  uni = new flujoPantallas();
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0,-10);
  text = new Texto();
  unico = new SoundFile(this,"Space unicorn sub español.mp3");
  unico.loop();
  uno = new Limite(width/2,height,width,20);
  dos = new Limite2(width/2,height/80,width,10);
  tres = new Limite3(5,height/2,10,height,0);
  cuat = new Limite4(width-5,height/2,10,height,0);
  
  cajas = new ArrayList<Caja>();
    cajas.add(new Caja(200,200,100,50,color(255,0,0)));

  cuadros = new ArrayList<Cuadro>();
    cuadros.add(new Cuadro(width/2,height/2,50));
    
  circulos = new ArrayList<Circulo>();
      circulos.add(new Circulo(380,200,3,1));
      
    triangulos = new ArrayList<Triangulo>();
      triangulos.add(new Triangulo(900,400,60,60));
      triangulos.add(new Tri2(900,400,60,60));
       triangulos.add(new Tri3(900,400,60,60));
        triangulos.add(new Tri4(900,400,60,60));
          
   textura= loadImage("Contraste-tonos-597bae0a3df78cbb7a25b6d2.png");
   tex= loadImage("Color_circle_(hue-sat).png");
   textur= loadImage("Cuáles-son-los-colores-pasteles-300x300.jpg");
   trian= loadImage("triangulo.png");
   trian2= loadImage("rosa.png");
   trian3= loadImage("verde.png");
   trian4= loadImage("amarillo.png");
   col = loadImage("fondo-rosa-brillante-azul_23-2147734232.jpg");
   
}


void draw(){
  uni.display();
  
}
void keyPressed(){
  if (key == CODED) {
    if (keyCode == CONTROL){
     saveFrame();
    }
 } 
 if(key == '1'){
 cajas.add(new Caja(200,200,100,50,color(255,0,0)));
 }
 if(key == '4'){
  triangulos.add(new Triangulo(900,400,60,60));
      triangulos.add(new Tri2(900,400,60,60));
       triangulos.add(new Tri3(900,400,60,60));
        triangulos.add(new Tri4(900,400,60,60));
 }
 if(key == '3'){
 cuadros.add(new Cuadro(width/2,height/2,50));
 }
 if(key == '2'){
 circulos.add(new Circulo(380,200,3,1));
 }
 if(key == 's'){
 circulos.remove(circulos.size()-1);
 }
 if( circulos.size() == 0){
  circulos.add(new Circulo(380,200,3,1));
 }
  if(key == 'd'){
 cuadros.remove(cuadros.size()-1);
 }
 if( cuadros.size() == 0){
  cuadros.add(new Cuadro(width/2,height/2,50));
 }
  if(key == 'a'){
 cajas.remove(cajas.size()-1);
 }
 if( cajas.size() == 0){
  cajas.add(new Caja(200,200,100,50,color(255,0,0)));
 }
 if(key == 'f'){
 triangulos.remove(triangulos.size()-1);
 }
 if( triangulos.size() == 0){
  triangulos.add(new Triangulo(900,400,60,60));
      triangulos.add(new Tri2(900,400,60,60));
       triangulos.add(new Tri3(900,400,60,60));
        triangulos.add(new Tri4(900,400,60,60));
 }
}

void mousePressed(){
  uni.cambioPantalla();
  pantalla ++;
  
}
