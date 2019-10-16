class Cuadro implements Agentes{
  float x;
  float y;
  float t;
  float dx;
  float dy;
 
  
  Cuadro(float x_, float y_, float t_){
    this.x = x_;
    this.y = y_;
    this.t = t_;
    this.dx = 3;
    this.dy = 3;
    
  }
  void mover(){
    this.x += this.dx;
    this.y += this.dy;
    if(this.x>width){
      this.x = 0;
    }
    if(this.x<0){
      this.x = width;
    }
    if(this.y>height){
      this.y = 0;
    }
    if(this.y<0){
      this.y = height;
    }
  }
  void display(){
   imageMode(CENTER);
    image(textura,this.x,this.y,this.t,this.t);
  }
  
}
