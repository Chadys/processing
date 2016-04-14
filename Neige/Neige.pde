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
    fill(255,240);
    //if(y=height){for(int b=0;b<2;b++){
      //new balle();};}
  }
}
void draw(){
  background(180,220,255);
  for(balle b:balles){
    b.bouge();
  }
}
class balle{
  float x, y, vx, vy, d, newx, v;
  balle(){
    x=random(500);
    y=random(-80,-20);
    d=random(20);
    float angle = random(TWO_PI);
    //float v=0.3;
    //vx=cos(angle);
    v=map(sin(angle), -1,1,0.5/20,1.9/20);
    vy=v*(d-0.8)+0.3;
    balles=(balle[]) append(balles,this);
  }
  void bouge(){
    x+=vx;
    y+=vy;
    x+=random(-0.1, 0.1);
     vx+=random(-0.15, 0.15);
     if(random(20)<1){
       vx=-vx;vx*=0.08;
     }
     vy*=1.001;
    //if(x<0){x=0; vx=abs(vx);}
    //if(y<0){y=0; vy=abs(vy);}
    //if(x>width){x=width; vx=-abs(vx);}
    if(y>height){y=-10 ; vx=-vx ;float angle = random(TWO_PI); 
    v=map(sin(angle), -1,1,0.5/13,1.9/13);
    vy=v*d-0.1;}
    ellipse(x,y,d,d);
  }
}


/*void mouseReleased(){
  new balle(mouseX, mouseY);
  }*/
