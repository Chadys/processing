balle[] balles;
float x, y, vx, vy, vz, d, newx;
void setup(){
  size(500,500);
  strokeWeight(5);
  smooth();
  balles=new balle[0];
  for(int a=0;a<100;a++){
    new balle();
    frameRate(24);
    noCursor();
    stroke(255,30);
    fill(255);
  }
}
void draw(){
  background(180,220,255);
  for(balle b:balles){
    b.bouge();
  }
}
class balle{
  float x, y, vx, vy, vz, d, newx;
  balle(){
    x=random(500);
    y=0;
    d=random(20);
    float angle = random(TWO_PI);
    vx=cos(angle);
    vy=sin(angle);
    balles=(balle[]) append(balles,this);
  }
  void bouge(){
    x+=vx;
    y+=vy;
    vy=vy+0.01;
    if(y>height){y=height; vy=0 ; vx=0;}
    ellipse(x,y,d,d);
  }
}
