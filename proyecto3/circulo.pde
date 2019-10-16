class Circulo implements Agentes{
  
  float x,y;
  float dx,dy;
  
  Circulo(float x_ , float y_,float dx_, float dy_){
    this.x = x_;
    this.y = y_;
    
    this.dx = dx_;
    this.dy= dy_;
  }
  
  void display(){
    imageMode(CENTER);
    pushMatrix();
    translate(this.x,this.y);
      image(tex,40,-40,70,70);
    
    popMatrix();
  }
  
  void mover(){
    this.x += this.dx;
    this.y += this.dy;
  
    this.rebotar();
  }
  
  
  void rebotar(){
    if(this.x<0 || this.x>width){
      this.dx *= -1;
    }
    if(this.y<0 || this.y>height){
      this.dy *= -1;
    }
  }
  
}
