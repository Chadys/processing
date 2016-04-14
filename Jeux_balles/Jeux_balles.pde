balle[] balles;
int nb_balles = 15;
void setup(){
  colorMode(HSB);
  size(500,500);
  noFill();
  smooth();
  balles=new balle[0];
  for(int a=0;a<nb_balles;a++){
    new balle();
    //frameRate(24);
    //noCursor();
  }
}
void draw(){
  background(0);
  fill(0,20);
  rect(0,0,width,height);
  for(balle b:balles){
    b.bouge();
  }
  if(mousePressed){mousePressed();}
}
class balle{
  float x, y, vx, vy, d;
  color c=color(random(255),255,255,100);
  balle(){
    x=random(500);
    y=random(500);
    d=random(80);
    float angle = random(TWO_PI);
    float v=3;
    vx=cos(angle)*v;
    vy=sin(angle)*v;
    balles=(balle[]) append(balles,this);
  }
  void bouge(){
    x+=vx;
    y+=vy;
    //vy=vy+0.8;
    if(x<0){x=0; vx=abs(vx);}
    if(y<0){y=0; vy=abs(vy);}
    if(x>width){x=width; vx=-abs(vx);}
    if(y>height){y=height; vy=-abs(vy);}
    stroke(c);
    ellipse(x,y,d,d);
    float distance=dist(x,y,pmouseX,pmouseY);
    if(distance<60){
      x=mouseX+((x-mouseX)/distance)*60;
      y=mouseY+((y-mouseY)/distance)*60;
    }
  }
}

void mousePressed(){
  for (int i=0; i<nb_balles; i++){
    balle b=balles[i];
    float distance=dist(b.x,b.y,mouseX,mouseY);
    if(distance<b.d){
      background(255);
      fill(0);
      PFont maTypo = createFont("arial",60);
      textFont(maTypo, 60);
      text("You Win !",125,250);
    }
  }
}