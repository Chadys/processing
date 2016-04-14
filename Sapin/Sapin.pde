float d, x, y;
color c;
PImage monImage;

void setup(){
  background(255);
  monImage = loadImage("sapin1.gif");
  surface.setSize(monImage.width,monImage.height);
  image(monImage,0,0);
  noCursor();
  frameRate(5);
  colorMode(HSB);
  }
void draw(){
  background(255);
  image(monImage,0,0);
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
  for(int x=0;x<width;x+=20){
   for(int y=0;y<height;y+=20){
    color c=monImage.get(x,y);
  if(red(c)<green(c)){if(blue(c)<green(c)){
  d=random(30);
  float newd = d+random(-1,1);
     if(newd>30){newd=30;} if(newd<0){newd=0;}
     d = newd;
  fill(random(255),255,255,160);
  ellipse(x,y,d,d);}}
}
}
}