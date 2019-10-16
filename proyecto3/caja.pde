class Caja{
  int w;
  int h;
  color c;
  Body b;
  
  Caja(int x_, int y_, int w_, int h_, color c_){
    this.w = w_;
    this.h = h_;
    this.c = c_;
    
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(x_,y_));
    
    b = box2d.createBody(bd);
    
    b.setLinearVelocity(new Vec2(-5,5));
    b.setAngularVelocity(5);
   
    PolygonShape ps = new PolygonShape();
    float anchoBox2d = box2d.scalarPixelsToWorld(w_/2);
    float altoBox2d = box2d.scalarPixelsToWorld(h_/2);
    ps.setAsBox(anchoBox2d,altoBox2d);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = ps;
    fd.density = 0.2;
    fd.friction = 1;
    fd.restitution = 2;
    
    b.createFixture(fd);
  }
  
  void display(){
    Vec2 posicion = box2d.getBodyPixelCoord(b);
    float angulo = b.getAngle();
    pushMatrix();
    translate(posicion.x,posicion.y);
    rotate(-angulo);
    noStroke();
    fill(this.c);
    imageMode(CENTER);
    image(textur,0,0,this.w,this.h);
    popMatrix();
  } 
}
