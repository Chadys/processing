PImage monImage;
boule[] boules;

void setup(){
  background(255);
  colorMode(HSB);
  frameRate(5);
  monImage = loadImage("sapin1.gif");
  surface.setSize(monImage.width,monImage.height);
  boules = new boule[0];
  for(int x=0;x<width;x+=20){
   for(int y=0;y<height;y+=20){
    color c=monImage.get(x,y);
  if(red(c)<green(c)){if(blue(c)<green(c)){
  new boule(x+random(-4,4),y+random(-4,4));}
      }
    }
  }
}

void draw(){
  background(255);
  image(monImage, 0,0);
  stroke(0);
  fill(40,255,255);
  beginShape();
  vertex(135,2);
  vertex(138,8);
  vertex(144,9);
  vertex(140,14);
  vertex(142,22);
  vertex(135,17);
  vertex(128,22);
  vertex(130,14);
  vertex(125,9);
  vertex(132,8);
  vertex(135,2);
  endShape();
  noStroke(); 
  for(int a=0;a<boules.length;a++){
    boules[a].dessine();
  }
}

class boule{
  float x, y, d;
  boule(float _x, float _y){
    x=_x;y=_y;
    d=random(30);
    boules = (boule[]) append(boules, this);  
  }
  
  void dessine(){
    fill(random(255),255,255,160);
    float newd = d+random(-8,8);
    if(newd>30){newd=30;} if(newd<0){newd=0;}
    d = newd;
    ellipse(x,y,d,d); 
  } 
}
