class Triangulo implements Agentes{
  float x;
  float y;
  int t;
  int i;
  boolean aparecio;
  float contador;
  
  Triangulo(float x_, float y_, int t_,int i_){
    this.x = x_;
    this.y = y_;
    this.t = t_;
    this.i = i_;
    this.contador = 0;
    this.aparecio = false;
  }
  void mover(){
    if(random(2)>1.98){
     aparecio = true;
     
     x=random(900);
   
     y=random(500);
    }
  
  if(aparecio == true){
    display();
    contador++;
  }
  
  if(contador>100){
    aparecio = false;
    contador = 0;
  }
  }
  
  void display(){
   imageMode(CENTER);
    image(trian,this.x,this.y,this.t,this.i);
  }
  
}

class Tri2 extends Triangulo{
  Tri2(float x_, float y_, int t_,int i_){
    super(x_,y_,t_, i_);
}
void display(){
   imageMode(CENTER);
    image(trian2,this.x,this.y,this.t,this.i);
  }
}

class Tri3 extends Triangulo{
  Tri3(float x_, float y_, int t_,int i_){
    super(x_,y_,t_, i_);
}
void display(){
   imageMode(CENTER);
    image(trian3,this.x,this.y,this.t,this.i);
  }
}

class Tri4 extends Triangulo{
  Tri4(float x_, float y_, int t_,int i_){
    super(x_,y_,t_, i_);
}
void display(){
   imageMode(CENTER);
    image(trian4,this.x,this.y,this.t,this.i);
  }
}
