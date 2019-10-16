class Limite {
  float x;
  float y;
  float w;
  float h;
  float i;
  Body b;

  Limite (float x_,float y_, float w_, float h_) {
    this.x = x_;
    this.y = y_;
    this.w = w_;
    this.h = h_;
    
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);
    sd.setAsBox(box2dW, box2dH);
    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    bd.position.set(box2d.coordPixelsToWorld(x,y));
    b = box2d.createBody(bd);
    b.createFixture(sd,1);
  }

  void display() {
    fill(0);
    stroke(0);
    rectMode(CENTER);
    rect(x,y,w,h);
  }
}
class Limite2 extends Limite{
  Limite2(float x_, float y_, float w_, float h_){
    super(x_,y_,w_,h_);
}
}
class Limite3 {
  float x;
  float y;
  float w;
  float h;
  float i;
  Body b;
  
  Limite3(float x_, float y_, float w_, float h_, float i_){
   this.x = x_;
   this.y = y_;
   this.w = w_;
   this.h = h_;
   this.i = i_;
    
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);
    sd.setAsBox(box2dW, box2dH);
    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    bd.position.set(box2d.coordPixelsToWorld(x,y));
    b = box2d.createBody(bd);
    b.createFixture(sd,1);
  }

void display(){
  fill(0);
    stroke(0);
    rectMode(CENTER);
    rect(x,y,w,h,i);
}
}
class Limite4 extends Limite3{
  Limite4(float x_, float y_, float w_, float h_, float i_){
    super(x_,y_,w_,h_,i_);
}
}
